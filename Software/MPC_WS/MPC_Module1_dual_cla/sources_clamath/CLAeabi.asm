;;#############################################################################
;; FILE: CLAeabi.asm
;; 
;; DESCRIPTION: This holds the .asg for EABI
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

    .if __TI_EABI__
    ;
    ; CLAacos
    ;
    .asg    CLAacos,_CLAacos
	.asg    __claCLAacos_sp,__cla_CLAacos_sp
    .asg    __claCLAacos_spc_sp,__cla_CLAacos_spc_sp
	
	;
	; CLAacosineTable
	;
    .asg    CLAacosinTable,_CLAacosinTable
    .asg    CLAacosinTableEnd,_CLAacosinTableEnd
    .asg    CLAacosinHalfPITable,_CLAacosinHalfPITable
	
	;
	; CLAasin
	;
    .asg    CLAasin,_CLAasin
	.asg    __claCLAasin_sp,__cla_CLAsin_sp
	
	;
	; CLAasineTable
	;
    .asg    CLAasinTable, _CLAasinTable
	.asg    CLAasinTableEnd,_CLAasinTableEnd
    .asg    CLAasinHalfPITable, _CLAasinHalfPITable
	
	;
	; CLAatan
	;
    .asg    CLAatan,_CLAatan
	.asg    __claCLAatan_sp,__cla_CLAatan_sp
	
	;
	; CLAatan2
	;
    .asg    CLAatan2,_CLAatan2
	.asg    __claCLAatan2_sp,__cla_CLAatan2_sp
	
	;
	; CLAatanPU
	;

    .asg    CLAatan2PU,_CLAatan2PU
	.asg    __claCLAatan2PU_sp,__cla_CLAatan2PU_sp
	
	;
	; CLAatanTable
	;
    .asg    CLAatan2Table, _CLAatan2Table
	.asg    CLAatan2TableEnd,_CLAatan2TableEnd
    .asg    CLAatan2HalfPITable, _CLAatan2HalfPITable
    .asg    CLAINV2PI, _CLAINV2PI
	
	;
	; CLAcos
	;
    .asg    CLAcos,_CLAcos
	.asg    __claCLAcos_sp,__cla_CLAcos_sp
	
	;
	; CLAcosPU
	;
    .asg    CLAcosPU,_CLAcosPU
    .asg    __claCLAcosPU_sp,__cla_CLAcosPU_sp
	
	;
	; CLAdiv
	;
    .asg    CLAdiv,_CLAdiv
	.asg    __claCLAdiv_sp,__cla_CLAdiv_sp
	
	;
	; CLAexp
	;
    .asg    CLAexp,_CLAexp
	.asg    __claCLAexp_sp,__cla_CLAexp_sp
	
	;
	; CLAexp2
	;
    .asg    CLAexp2,_CLAexp2
	.asg    __claCLAexp2_sp,__cla_CLAexp2_sp
	
	;
	; CLAexp10
	;
    .asg    CLAexp10,_CLAexp10
	.asg    __claCLAexp10_sp,__cla_CLAexp10_sp
	
	;
	; CLAexpN
	;
    .asg    CLAexpN,_CLAexpN
	.asg    __claCLAexpN_sp,__cla_CLAexpN_sp
	
	;
	; CLAexpTable
	;
	.asg    CLAExpTable, _CLAExpTable
	.asg    CLAExpTableEnd,_CLAExpTableEnd
    .asg    CLAINV1,_CLAINV1
	.asg    CLAINV2,_CLAINV2
    .asg    CLAINV3,_CLAINV3
    .asg    CLAINV4,_CLAINV4    
    .asg    CLAINV5,_CLAINV5
    .asg    CLAINV6,_CLAINV6
    .asg    CLAINV7,_CLAINV7
    .asg    CLALOG10,_CLALOG10
	
	;
	; CLAisqrt
	;
    .asg    CLAisqrt,_CLAisqrt
	.asg    __claCLAisqrt_sp,__cla_CLAisqrt_sp
	
	;
	; CLAln
	;
    .asg    CLAln,_CLAln
    .asg    __claCLAln_sp,__cla_CLAln_sp
	
	;
	; CLAlnTable
	;
    .asg    CLALNV2,_CLALNV2
    .asg    CLALNVe,_CLALNVe
    .asg    CLALNV10,_CLALNV10
    .asg    CLABIAS,_CLABIAS
    .asg    CLALN_TABLE_MASK1,_CLALN_TABLE_MASK1
    .asg    CLALN_TABLE_MASK2,_CLALN_TABLE_MASK2
    .asg    CLALnTable,_CLALnTable
    .asg    CLALnTableEnd,_CLALnTableEnd
	
	;
	; CLAlog10
	;
    .asg    CLAlog10,_CLAlog10
	.asg    __claCLAlog10_sp,__cla_CLAlog10_sp

	;
	; CLAlogN
	;
    .asg    CLAlogN,_CLAlogN
	.asg    __claCLAlogN_sp,__cla_CLAlogN_sp
	
	;
	; CLAsin
	;
    .asg    CLAsin,_CLAsin
	.asg    __claCLAsin_sp,__cla_CLAsin_sp
	
	;
	; CLAsincos
	;
    .asg    CLAsincos,_CLAsincos
    .asg    __claCLAsincos_sp,__cla_CLAsincos_sp

	;
	; CLAsincosTable
	;
    .asg    CLAsincosTable,_CLAsincosTable
    .asg    CLAsinTable,_CLAsinTable
    .asg    CLAsincosTable_Sin0,_CLAsincosTable_Sin0
    .asg    CLAcosTable,_CLAcosTable
    .asg    CLAsincosTable_Cos0,_CLAsincosTable_Cos0
    .asg    CLAsinTableEnd,_CLAsinTableEnd
    .asg    CLAcosTableEnd,_CLAcosTableEnd
    .asg    CLAsincosTable_TABLE_SIZE,_CLAsincosTable_TABLE_SIZE             
    .asg    CLAsincosTable_TABLE_SIZEDivTwoPi,_CLAsincosTable_TABLE_SIZEDivTwoPi    
    .asg    CLAsincosTable_TwoPiDivTABLE_SIZE,_CLAsincosTable_TwoPiDivTABLE_SIZE  
    .asg    CLAsincosTable_TABLE_MASK,_CLAsincosTable_TABLE_MASK       
    .asg    CLAsincosTable_Coef0,_CLAsincosTable_Coef0
    .asg    CLAsincosTable_Coef1,_CLAsincosTable_Coef1
    .asg    CLAsincosTable_Coef1_pos,_CLAsincosTable_Coef1_pos
    .asg    CLAsincosTable_Coef2,_CLAsincosTable_Coef2
    .asg    CLAsincosTable_Coef3,_CLAsincosTable_Coef3
    .asg    CLAsincosTable_Coef3_neg,_CLAsincosTable_Coef3_neg
    .asg    CLAsincosTableEnd,_CLAsincosTableEnd
	
	;
	; CLAsinPU
	;
    .asg    CLAsinPU,_CLAsinPU
	.asg    __claCLAsinPU_sp,__cla_CLAsinPU_sp
	
	;
	; CLAsqrt
	;
	.asg    CLAsqrt,_CLAsqrt
	.asg    __claCLAsqrt_sp,__cla_CLAsqrt_sp
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	.endif
	
