;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.1.LTS *
;* Date/Time created: Sat Nov 14 12:25:45 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla0 --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../utility Src Files/DLOG_4CH_F.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\admin\Documents\GitHub\fault_tolerant_drives\Software\MPC_WS\MonoMtrServo_377s\F2837x_RAM")
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\opt2000.exe C:\\Users\\admin\\AppData\\Local\\Temp\\{2024C1D7-2D3E-4AEA-A74A-E1988E9C3171} C:\\Users\\admin\\AppData\\Local\\Temp\\{9ECE7850-F6ED-4139-B9B8-400F9B37CA80} 
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\ac2000.exe -@C:\\Users\\admin\\AppData\\Local\\Temp\\{7BC2D87F-220D-4066-85BF-B3D404D42926} 
	.sect	".text"
	.clink
	.global	_DLOG_4CH_F_init

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DLOG_4CH_F_init")
	.dwattr $C$DW$1, DW_AT_low_pc(_DLOG_4CH_F_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DLOG_4CH_F_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../utility Src Files/DLOG_4CH_F.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x07)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 8,column 1,is_stmt,address _DLOG_4CH_F_init,isa 0

	.dwfde $C$DW$CIE, _DLOG_4CH_F_init
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("v")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _DLOG_4CH_F_init              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DLOG_4CH_F_init:
;* AR4   assigned to _v
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("v")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 9,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |9| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 10,column 2,is_stmt,isa 0
        MOVB      XAR0,#0               ; [CPU_ALU] |10| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 11,column 2,is_stmt,isa 0
        MOVB      XAR5,#0               ; [CPU_ALU] |11| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 12,column 2,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_ALU] |12| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 13,column 2,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |13| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 9,column 2,is_stmt,isa 0
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |9| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 14,column 2,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |14| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 15,column 2,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |15| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 17,column 2,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |17| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 18,column 2,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |18| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 10,column 2,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR0        ; [CPU_ALU] |10| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 13,column 2,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |13| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 11,column 2,is_stmt,isa 0
        MOVL      *+XAR4[4],XAR5        ; [CPU_ALU] |11| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 12,column 2,is_stmt,isa 0
        MOVL      *+XAR4[6],P           ; [CPU_ALU] |12| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 13,column 2,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR7      ; [CPU_ALU] |13| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 14,column 2,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |14| 
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |14| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 16,column 2,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |16| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 15,column 2,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |15| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 23,column 2,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |23| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 16,column 2,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |16| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 17,column 2,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |17| 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |17| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 18,column 2,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |18| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |18| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 19,column 2,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |19| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |19| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 20,column 2,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |20| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |20| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 21,column 2,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |21| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |21| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 22,column 2,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |22| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |22| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 23,column 2,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |23| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../utility Src Files/DLOG_4CH_F.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x18)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.global	_DLOG_4CH_F_FUNC

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("DLOG_4CH_F_FUNC")
	.dwattr $C$DW$5, DW_AT_low_pc(_DLOG_4CH_F_FUNC)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_DLOG_4CH_F_FUNC")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../utility Src Files/DLOG_4CH_F.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 28,column 1,is_stmt,address _DLOG_4CH_F_FUNC,isa 0

	.dwfde $C$DW$CIE, _DLOG_4CH_F_FUNC
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("v")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _DLOG_4CH_F_FUNC              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DLOG_4CH_F_FUNC:
;* R0    assigned to $O$C1
;* AR4   assigned to _v
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("v")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 29,column 2,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |29| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |29| 
        CMPB      AL,#1                 ; [CPU_ALU] |29| 
        B         $C$L1,EQ              ; [CPU_ALU] |29| 
        ; branchcc occurs ; [] |29| 
        CMPB      AL,#2                 ; [CPU_ALU] |29| 
        B         $C$L2,NEQ             ; [CPU_ALU] |29| 
        ; branchcc occurs ; [] |29| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 39,column 3,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |39| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 40,column 3,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |40| 
        MOVB      XAR1,#22              ; [CPU_ALU] |40| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 39,column 3,is_stmt,isa 0
        ADDB      XAR5,#22              ; [CPU_ALU] |39| 
        INC       *+XAR5[0]             ; [CPU_ALU] |39| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 40,column 3,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |40| 
        CMP       AL,*+XAR4[AR1]        ; [CPU_ALU] |40| 
        B         $C$L2,NEQ             ; [CPU_ALU] |40| 
        ; branchcc occurs ; [] |40| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 42,column 4,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |42| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |42| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 43,column 4,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |43| 
        MOVB      XAR1,#24              ; [CPU_ALU] |43| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      XAR0,#8               ; [CPU_ALU] |43| 
        MOVL      XAR6,*+XAR6[0]        ; [CPU_ALU] |43| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |43| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |43| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 44,column 4,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |44| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 43,column 4,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |43| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 44,column 4,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |44| 
        MOVB      XAR1,#24              ; [CPU_ALU] |44| 
        MOVB      XAR0,#10              ; [CPU_ALU] |44| 
        MOVL      XAR6,*+XAR6[0]        ; [CPU_ALU] |44| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |44| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |44| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 45,column 4,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |45| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 44,column 4,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |44| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 45,column 4,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[4]        ; [CPU_ALU] |45| 
        MOVB      XAR1,#24              ; [CPU_ALU] |45| 
        MOVB      XAR0,#12              ; [CPU_ALU] |45| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |45| 
        MOVL      XAR7,*+XAR6[0]        ; [CPU_ALU] |45| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |45| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 47,column 4,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |47| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 46,column 4,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |46| 
        MOVB      XAR0,#14              ; [CPU_ALU] |46| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 45,column 4,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR7        ; [CPU_ALU] |45| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 46,column 4,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[6]        ; [CPU_ALU] |46| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 47,column 4,is_stmt,isa 0
        MOVL      XAR6,XAR4             ; [CPU_ALU] |47| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 46,column 4,is_stmt,isa 0
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |46| 
        ADDL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |46| 
        MOVL      XAR7,*+XAR7[0]        ; [CPU_FPU] |46| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 48,column 4,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |48| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 47,column 4,is_stmt,isa 0
        ADDB      XAR6,#24              ; [CPU_ALU] |47| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 48,column 4,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_FPU] |48| 
        MOVB      XAR1,#24              ; [CPU_FPU] |48| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 46,column 4,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR7        ; [CPU_FPU] |46| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 47,column 4,is_stmt,isa 0
        INC       *+XAR6[0]             ; [CPU_ALU] |47| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 48,column 4,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |48| 
        CMP       AL,*+XAR4[AR1]        ; [CPU_ALU] |48| 
        B         $C$L2,NEQ             ; [CPU_ALU] |48| 
        ; branchcc occurs ; [] |48| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 50,column 5,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |50| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 51,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |51| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 50,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |50| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 51,column 5,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_ALU] |51| 
        B         $C$L2,UNC             ; [CPU_ALU] |51| 
        ; branch occurs ; [] |51| 
$C$L1:    
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 32,column 3,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |32| 
        MOVB      XAR0,#18              ; [CPU_ALU] |32| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |32| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |32| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |32| 
        MOVST0    ZF, NF                ; [CPU_FPU] |32| 
        B         $C$L2,LEQ             ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
        MOVB      XAR0,#16              ; [CPU_ALU] |32| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |32| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |32| 
        MOVST0    ZF, NF                ; [CPU_FPU] |32| 
        B         $C$L2,GEQ             ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 35,column 4,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |35| 
        MOVB      *+XAR4[AR0],#2,UNC    ; [CPU_ALU] |35| 
$C$L2:    
	.dwpsn	file "../utility Src Files/DLOG_4CH_F.c",line 56,column 2,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |56| 
        MOVB      XAR0,#16              ; [CPU_ALU] |56| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |56| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |56| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../utility Src Files/DLOG_4CH_F.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x1a)
$C$DW$9	.dwtag  DW_TAG_member
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$9, DW_AT_name("input_ptr1")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_input_ptr1")
	.dwattr $C$DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$10	.dwtag  DW_TAG_member
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$10, DW_AT_name("input_ptr2")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_input_ptr2")
	.dwattr $C$DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$10, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$11	.dwtag  DW_TAG_member
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$11, DW_AT_name("input_ptr3")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_input_ptr3")
	.dwattr $C$DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_name("input_ptr4")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_input_ptr4")
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$13, DW_AT_name("output_ptr1")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_output_ptr1")
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_name("output_ptr2")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_output_ptr2")
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$15, DW_AT_name("output_ptr3")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_output_ptr3")
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$16, DW_AT_name("output_ptr4")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_output_ptr4")
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_name("prev_value")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_prev_value")
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_name("trig_value")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_trig_value")
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_name("status")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$20, DW_AT_name("pre_scalar")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_pre_scalar")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$21, DW_AT_name("skip_count")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_skip_count")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$22, DW_AT_name("size")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$23, DW_AT_name("count")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("DLOG_4CH_F")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)

$C$DW$24	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$24)

$C$DW$T$25	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$24)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("int16")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("AL")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg0]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("AH")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg1]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("PL")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg2]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("PH")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg3]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("SP")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg20]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("XT")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg21]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("T")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg22]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("ST0")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg23]

$C$DW$33	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$33, DW_AT_name("ST1")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg24]

$C$DW$34	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$34, DW_AT_name("PC")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg25]

$C$DW$35	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$35, DW_AT_name("RPC")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg26]

$C$DW$36	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$36, DW_AT_name("FP")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg28]

$C$DW$37	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$37, DW_AT_name("DP")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg29]

$C$DW$38	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$38, DW_AT_name("SXM")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg30]

$C$DW$39	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$39, DW_AT_name("PM")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg31]

$C$DW$40	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$40, DW_AT_name("OVM")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x20]

$C$DW$41	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$41, DW_AT_name("PAGE0")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x21]

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("AMODE")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x22]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("EALLOW")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("INTM")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x23]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("IFR")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x24]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("IER")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x25]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("V")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x26]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("VOL")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("AR0")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg4]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("XAR0")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg5]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("AR1")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg6]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("XAR1")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg7]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("AR2")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg8]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("XAR2")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg9]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("AR3")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg10]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("XAR3")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg11]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("AR4")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("XAR4")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg13]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("AR5")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg14]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("XAR5")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg15]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("AR6")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg16]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("XAR6")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg17]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("AR7")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg18]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("XAR7")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg19]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("R0H")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("R1H")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("R2H")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x33]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("R3H")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x37]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("R4H")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("R5H")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("R6H")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x43]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("R7H")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x47]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("RB")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("STF")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x28]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg27]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("VCRC")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x50]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("VSTATUS")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x51]

	.dwendtag $C$DW$CU

