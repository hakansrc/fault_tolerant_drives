;;#############################################################################
;; FILE: CLAatan2PU.asm
;; 
;; DESCRIPTION: CLA arctan2 Per Unit function
;; 
;; Group:            C2000
;; Target Family:    C28x+CLA
;;
;;#############################################################################
;; $TI Release: CLA Math Library 4.03.02.00 $
;; $Release Date: Feb 12, 2021 $
;; $Copyright: Copyright (C) 2021 Texas Instruments Incorporated -
;;             http://www.ti.com/ ALL RIGHTS RESERVED $
;;#############################################################################

    .cdecls C,LIST,"CLAmath.h"
	.include "CLAeabi.asm"

;;----------------------------------------------------------------------------
;; Description: 
;;   The algorithm steps to calculate the "atan2" of the given
;;   input X and Y is as follows:
;;  
;;   Step(1):   if( abs(X) >= abs(Y) )
;;                  Numerator   = abs(Y)
;;                  Denominator = abs(X)
;;              else
;;                  Numerator   = abs(X)
;;                  Denominator = abs(Y)
;;  
;;   Step(2):   Ratio = Numerator/Denominator
;;  
;;              Note: Ratio range = 0.0 to 1.0
;;  
;;   Step(3):   Use the upper 6-bits of the "Ratio" value as an
;;              index into the table to obtain the coefficients
;;              for a second order equation:
;;  
;;              _FPUatan2Table:
;;                   CoeffA0[0]
;;                   CoeffA1[0]
;;                   CoeffA2[0]
;;                      .
;;                      .
;;                   CoeffA0[63]
;;                   CoeffA1[63]
;;                   CoeffA2[63]
;;  
;;   Step(4):   Calculate the angle using the folowing equation:
;;  
;;              arctan(Ratio) = A0 + A1*Ratio + A2*Ratio*Ratio
;;              arctan(Ratio) = A0 + Ratio(A1 + A2*Ratio)
;;  
;;   Step(5):   The final angle is determined as follows:
;;  
;;              if( X >= 0 and Y >= 0 and abs(X) >= abs(Y) )
;;                  Angle = arctan(abs(Y)/abs(X))
;;              if( X >= 0 and Y >= 0 and abs(X) <  abs(Y) )
;;                  Angle = PI/2 - arctan(abs(X)/abs(Y))
;;              if( X < 0  and Y >= 0 and abs(X) <  abs(Y) )
;;                  Angle = PI/2 + arctan(abs(X)/abs(Y))
;;              if( X < 0  and Y >= 0 and abs(X) >= abs(Y) )
;;                  Angle = PI - arctan(abs(Y)/abs(X))
;;              if( Y < 0 )
;;                  Angle = -Angle
;;  
;;                  AnglePU =Angle/2pi 
;;
;; Equation:    z = { atan(y/x) } / 2pi
;;
;; Regs Used:   MR0, MR1, MR2, MR3, MAR0,MAR1
;;
;; Input:   x , y       two f32 values in memory
;;
;; Output:  z           f32 value in memory
;;          MR0 = z     f32 result
;; 
;; Benchmark:   Cycles = 46  
;;          Instructions = 46
;;
;; Scratchpad Usage: (Local Function Scratchpad Pointer (SP))
;;
;;   |_______|<- MR3                               (SP+4)
;;   |_______|<- atan2PU temporary variable 2      (SP+2)
;;   |_______|<- atan2PU temporary variable 1      (SP+0)
;;
;;----------------------------------------------------------------------------

    
    .def    _CLAatan2PU
    .sect   "Cla1Prog:_CLAatan2PU"
    .align  2
	.def    __cla_CLAatan2PU_sp
__cla_CLAatan2PU_sp .usect ".scratchpad:Cla1Prog:_CLAatan2PU",6,0,1

_CLAatan2PU:
    .asmfunc
    .asg    __cla_CLAatan2PU_sp + 0, _atan2PU_tmp1 
    .asg    __cla_CLAatan2PU_sp + 2, _atan2PU_tmp2 
    .asg    __cla_CLAatan2PU_sp + 4, _save_MR3     
; Context Save
    MMOV32     @_save_MR3, MR3
; MR0 = Y(fVal1) and MR1 = X(fVal2) is stored in the 
; scratchpad memory
    MMOV32      @_atan2PU_tmp1,MR0  ;Y
    MMOV32      @_atan2PU_tmp2,MR1  ;X
; Perform Step (1):
    MABSF32     MR3,MR0             ; MR3 = abs(Y)
    MMOV32      MR2,MR3             ; Store abs(Y) in MR2
    MABSF32     MR1,MR1             ; Store abs(X) in MR1
    MMINF32     MR3,MR1             ; MR3 = numerator (A) = min(abs(Y),abs(X)) 
    MMOV32      MR1,MR2,GT          ; MR1 = denominator (B) = max(abs(Y),abs(X))
                                    ; Ratio = A/B
; Perform Step (2): 
    MEINVF32    MR2,MR1             ; MR2 = Ye = Estimate(1/Denominator) i.e 1/B
    MTESTTF     LEQ                 ; Set TF if 1.0 >= abs(X) , this will be used in step 5
    MMPYF32     MR0,MR2,MR1         ; MR0 = Ye*B
    MSUBF32     MR0,#2.0,MR0        ; MR0 = 2.0 - Ye*B
    MMPYF32     MR2,MR2,MR0         ; MR2 = Ye = Ye*(2.0 - Ye*B)  (first estimate)
    MMPYF32     MR0,MR2,MR1         ; MR0 = Ye*B
    MSUBF32     MR0,#2.0,MR0        ; MR0 = 2.0 - Ye*B
    MMPYF32     MR2,MR2,MR0         ; MR2 = Ye = Ye*(2.0 - Ye*B)  (second estimate)
    MMPYF32     MR0,MR2,MR3         ; MR0 = Ratio = A*Ye = A/B
; Perform Step (3):
    MMPYF32     MR2,MR0,#64.0       ; 64 = Elements In Table
    MF32TOUI16  MR2,MR2             ; MR2 = int(64*ratio)
    MADD32      MR2,MR2,MR2         ; MR2 = 2*MR2
    MADD32      MR1,MR2,MR2         ; MR1 = 4*MR2
    MADD32      MR2,MR2,MR1         ; MR2 = 6*MR2 this is the index value for the stored data array
    MMOV16      MAR0,MR2,#_CLAatan2Table+4     ; MAR0 points to A2, this will be used in step 4
    MMOVI16     MAR1,#_CLAatan2HalfPITable+2   ; MAR1 points to pi/2, this will be used in step 5
    MNOP
    MNOP
; Perform Step (4):
; arctan(Ratio) = A0 + Ratio(A1 + A2*Ratio)
    MMOV32      MR1,*MAR0[#-2]++    ; MR1 = A2
    MMPYF32     MR1,MR1,MR0         ; MR1 = A2*Ratio
 || MMOV32      MR3,*MAR0[#-2]++    ; MR3 = A1
    MADDF32     MR3,MR3,MR1         ; MR3 = A1 + A2*Ratio
 || MMOV32      MR1,*MAR0           ; MR1 = A0
    MMPYF32     MR3,MR3,MR0         ; MR3 = Ratio*(A1 + A2*Ratio)
    MADDF32     MR3,MR1,MR3         ; MR3 = A0 + Ratio*(A1 + A2*Ratio)
 || MMOV32      MR2,@_atan2PU_tmp2  ; MR2 = X (set/clear NF,ZF for use below)
; Perform Step (5):
    MMOV32      MR1,*MAR1,UNC       ; MR1 = pi/2  (no flag change)
    MNEGF32     MR0,MR1,UNC         ; MR0 = -pi/2 (no flag change)
    MMOV32      MR3,MR2,EQ          ; if (X == 0), MR3 = 0
    MNEGF32     MR3,MR3,GEQ         ; if (X >= 0) MR3 flip sign of atan(Ratio)
    MNEGF32     MR3,MR3,TF          ; if (abs(X) >= abs(Y)) flip sign of atan(Ratio)
        
    MNEGF32     MR0,MR0,LT          ; if (X < 0) MR0 = pi/2
    MADDF32     MR0,MR0,MR1         ; MR0 = MR0+pi/2
                                    ; if(X < 0) MR0 = pi
                                    ; if(X > 0) MR0 = 0
 || MMOV32      MR2,@_atan2PU_tmp1  ; MR2 = Y (set/clear NF,ZF)
    MMOV32      MR0,MR1,NTF         ; if(abs(X) < abs(Y) R3H = pi/2
    MADDF32     MR3,MR3,MR0         ; MR3 = Angle
    MNEGF32     MR3,MR3,LT          ; if (Y < 0) Angle = -Angle
    
    MMOV32      MR1,@_CLAINV2PI     ; MR1 = 1/pi*2, this will be used in step 5

; Context Restore and Final Operations
    MRCNDD      UNC
    MMPYF32     MR3,MR3,MR1         ; MR3= Angle*(1/pi*2)
    MMOV32      MR0,MR3             ; Store Y = atan2PU(X)
    MMOV32      MR3,@_save_MR3 
    .unasg  _atan2PU_tmp1 
    .unasg  _atan2PU_tmp2 
    .unasg  _save_MR3     
    .endasmfunc
        
;; End of File
