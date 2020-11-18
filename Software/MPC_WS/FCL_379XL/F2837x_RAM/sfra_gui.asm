;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.1.LTS *
;* Date/Time created: Wed Nov 18 21:47:58 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla0 --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/sfra_gui.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\admin\Documents\GitHub\fault_tolerant_drives\Software\MPC_WS\FCL_379XL\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SFRA_F_INIT")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SFRA_F_INIT")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$30)

	.dwendtag $C$DW$1

	.global	_SFRA_InitFlag
_SFRA_InitFlag:	.usect	".ebss",1,1,0
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("SFRA_InitFlag")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_SFRA_InitFlag")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _SFRA_InitFlag]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$3, DW_AT_external

	.global	_sfraControl
_sfraControl:	.usect	".ebss",16,1,1
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("sfraControl")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_sfraControl")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _sfraControl]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$4, DW_AT_external

	.global	_SFRA1
_SFRA1:	.usect	".ebss",24,1,1
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("SFRA1")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_SFRA1")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _SFRA1]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$5, DW_AT_external

	.global	_varSetTxtList
_varSetTxtList:	.usect	".ebss:_varSetTxtList",32,1,1
	.clink ".ebss:_varSetTxtList"
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("varSetTxtList")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_varSetTxtList")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _varSetTxtList]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$6, DW_AT_external

	.global	_varSetBtnList
_varSetBtnList:	.usect	".ebss:_varSetBtnList",32,1,1
	.clink ".ebss:_varSetBtnList"
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("varSetBtnList")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_varSetBtnList")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _varSetBtnList]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$7, DW_AT_external

	.global	_varSetSldrList
_varSetSldrList:	.usect	".ebss:_varSetSldrList",32,1,1
	.clink ".ebss:_varSetSldrList"
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("varSetSldrList")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_varSetSldrList")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _varSetSldrList]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$8, DW_AT_external

	.global	_varGetList
_varGetList:	.usect	".ebss:_varGetList",32,1,1
	.clink ".ebss:_varGetList"
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("varGetList")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_varGetList")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _varGetList]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$9, DW_AT_external

	.global	_arrayGetList
_arrayGetList:	.usect	".ebss:_arrayGetList",32,1,1
	.clink ".ebss:_arrayGetList"
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("arrayGetList")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_arrayGetList")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _arrayGetList]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$10, DW_AT_external

	.global	_dataSetList
_dataSetList:	.usect	".ebss:_dataSetList",32,1,1
	.clink ".ebss:_dataSetList"
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("dataSetList")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_dataSetList")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _dataSetList]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$11, DW_AT_external

	.global	_Plant_MagVect
_Plant_MagVect:	.usect	".ebss:_Plant_MagVect",52,1,1
	.clink ".ebss:_Plant_MagVect"
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("Plant_MagVect")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_Plant_MagVect")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _Plant_MagVect]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$12, DW_AT_external

	.global	_Plant_PhaseVect
_Plant_PhaseVect:	.usect	".ebss:_Plant_PhaseVect",52,1,1
	.clink ".ebss:_Plant_PhaseVect"
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("Plant_PhaseVect")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_Plant_PhaseVect")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _Plant_PhaseVect]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$13, DW_AT_external

	.global	_OL_MagVect
_OL_MagVect:	.usect	".ebss:_OL_MagVect",52,1,1
	.clink ".ebss:_OL_MagVect"
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("OL_MagVect")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_OL_MagVect")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr _OL_MagVect]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$14, DW_AT_external

	.global	_OL_PhaseVect
_OL_PhaseVect:	.usect	".ebss:_OL_PhaseVect",52,1,1
	.clink ".ebss:_OL_PhaseVect"
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("OL_PhaseVect")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_OL_PhaseVect")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _OL_PhaseVect]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$15, DW_AT_external

	.global	_FreqVect
_FreqVect:	.usect	".ebss:_FreqVect",52,1,1
	.clink ".ebss:_FreqVect"
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("FreqVect")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_FreqVect")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr _FreqVect]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$16, DW_AT_external

	.sblock	".ebss"
	.sblock	".ebss:_FreqVect"
	.sblock	".ebss:_OL_MagVect"
	.sblock	".ebss:_OL_PhaseVect"
	.sblock	".ebss:_Plant_MagVect"
	.sblock	".ebss:_Plant_PhaseVect"
	.sblock	".ebss:_arrayGetList"
	.sblock	".ebss:_dataSetList"
	.sblock	".ebss:_varGetList"
	.sblock	".ebss:_varSetBtnList"
	.sblock	".ebss:_varSetSldrList"
	.sblock	".ebss:_varSetTxtList"
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\opt2000.exe C:\\Users\\admin\\AppData\\Local\\Temp\\{A5928071-3A80-4CC5-B6BE-1F66F737F923} C:\\Users\\admin\\AppData\\Local\\Temp\\{A678F754-8C76-40AC-9F02-939DA695DDD3} 
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\ac2000.exe -@C:\\Users\\admin\\AppData\\Local\\Temp\\{CAB71161-D20D-4BD5-BCBD-A3D6FDC798F6} 
	.sect	".text"
	.clink
	.global	_SFRA_Init

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("SFRA_Init")
	.dwattr $C$DW$17, DW_AT_low_pc(_SFRA_Init)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_SFRA_Init")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_TI_begin_file("../sources/sfra_gui.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x44)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/sfra_gui.c",line 69,column 1,is_stmt,address _SFRA_Init,isa 0

	.dwfde $C$DW$CIE, _SFRA_Init
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("SFRA_ISR_FREQ")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_SFRA_ISR_FREQ")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: _SFRA_Init                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SFRA_Init:
;* R0    assigned to _SFRA_ISR_FREQ
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("SFRA_ISR_FREQ")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_SFRA_ISR_FREQ")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/sfra_gui.c",line 82,column 5,is_stmt,isa 0
        MOVL      XAR4,#_Plant_PhaseVect ; [CPU_ARAU] |82| 
        MOVW      DP,#_SFRA1+21         ; [CPU_ARAU] 
	.dwpsn	file "../sources/sfra_gui.c",line 73,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15523            ; [CPU_FPU] |73| 
	.dwpsn	file "../sources/sfra_gui.c",line 77,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16293            ; [CPU_FPU] |77| 
	.dwpsn	file "../sources/sfra_gui.c",line 76,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16672            ; [CPU_FPU] |76| 
	.dwpsn	file "../sources/sfra_gui.c",line 78,column 5,is_stmt,isa 0
        MOVL      XAR0,#_FreqVect       ; [CPU_ARAU] |78| 
	.dwpsn	file "../sources/sfra_gui.c",line 79,column 5,is_stmt,isa 0
        MOVL      XAR7,#_OL_MagVect     ; [CPU_ARAU] |79| 
	.dwpsn	file "../sources/sfra_gui.c",line 80,column 5,is_stmt,isa 0
        MOVL      XAR6,#_OL_PhaseVect   ; [CPU_ARAU] |80| 
	.dwpsn	file "../sources/sfra_gui.c",line 81,column 5,is_stmt,isa 0
        MOVL      XAR5,#_Plant_MagVect  ; [CPU_ARAU] |81| 
	.dwpsn	file "../sources/sfra_gui.c",line 82,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(_SFRA1)+2,XAR4 ; [CPU_ALU] |82| 
	.dwpsn	file "../sources/sfra_gui.c",line 73,column 5,is_stmt,isa 0
        MOVXI     R2H,#55050            ; [CPU_FPU] |73| 
	.dwpsn	file "../sources/sfra_gui.c",line 74,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(_SFRA1)+21,#26,UNC ; [CPU_ALU] |74| 
	.dwpsn	file "../sources/sfra_gui.c",line 75,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(_SFRA1)+12,R0H ; [CPU_FPU] |75| 
	.dwpsn	file "../sources/sfra_gui.c",line 77,column 5,is_stmt,isa 0
        MOVXI     R1H,#20864            ; [CPU_FPU] |77| 
	.dwpsn	file "../sources/sfra_gui.c",line 76,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(_SFRA1)+14,R3H ; [CPU_FPU] |76| 
	.dwpsn	file "../sources/sfra_gui.c",line 78,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(_SFRA1)+8,XAR0 ; [CPU_ALU] |78| 
	.dwpsn	file "../sources/sfra_gui.c",line 79,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(_SFRA1)+4,XAR7 ; [CPU_ALU] |79| 
	.dwpsn	file "../sources/sfra_gui.c",line 80,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(_SFRA1)+6,XAR6 ; [CPU_ALU] |80| 
	.dwpsn	file "../sources/sfra_gui.c",line 81,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(_SFRA1),XAR5 ; [CPU_ALU] |81| 
	.dwpsn	file "../sources/sfra_gui.c",line 83,column 5,is_stmt,isa 0
        MOVL      XAR4,#_SFRA1          ; [CPU_ARAU] |83| 
	.dwpsn	file "../sources/sfra_gui.c",line 73,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(_SFRA1)+10,R2H ; [CPU_FPU] |73| 
	.dwpsn	file "../sources/sfra_gui.c",line 77,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(_SFRA1)+16,R1H ; [CPU_FPU] |77| 
	.dwpsn	file "../sources/sfra_gui.c",line 83,column 5,is_stmt,isa 0
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_SFRA_F_INIT")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_SFRA_F_INIT         ; [CPU_ALU] |83| 
        ; call occurs [#_SFRA_F_INIT] ; [] |83| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../sources/sfra_gui.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_SFRA_F_INIT

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x18)
$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_name("H_MagVect")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_H_MagVect")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_name("H_PhaseVect")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_H_PhaseVect")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_name("GH_MagVect")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_GH_MagVect")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("GH_PhaseVect")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_GH_PhaseVect")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("FreqVect")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_FreqVect")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$27, DW_AT_name("amplitude")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_amplitude")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$28, DW_AT_name("ISR_Freq")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_ISR_Freq")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$29, DW_AT_name("Freq_Start")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_Freq_Start")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$30, DW_AT_name("Freq_Step")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_Freq_Step")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_name("start")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$32, DW_AT_name("state")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$33, DW_AT_name("status")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$34, DW_AT_name("Vec_Length")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_Vec_Length")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$35, DW_AT_name("FreqIndex")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_FreqIndex")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("SFRA_F")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$36	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$36)

$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x20)


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x10)
$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$37, DW_AT_name("driveSpeedSet")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_driveSpeedSet")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$38, DW_AT_name("loadCurrentSet")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_loadCurrentSet")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$39, DW_AT_name("driveSpeedFbk")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_driveSpeedFbk")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$40, DW_AT_name("loadCurrentFbk")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_loadCurrentFbk")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$41, DW_AT_name("driveLatency")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_driveLatency")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$42, DW_AT_name("loadLatency")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_loadLatency")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$43, DW_AT_name("loadMotor")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_loadMotor")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$44, DW_AT_name("runDrive")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_runDrive")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$45, DW_AT_name("runLoad")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_runLoad")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("SFRA_CONTROL")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

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

$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("int16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("int16")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x20)
$C$DW$46	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$46, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$38

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("int32")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)


$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x20)
$C$DW$47	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$47, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$41

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("Uint32")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x20)


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x20)
$C$DW$48	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$48, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$44

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)

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

$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)

$C$DW$49	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$16)

$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$49)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("float32")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x34)
$C$DW$50	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$50, DW_AT_upper_bound(0x19)

	.dwendtag $C$DW$T$48

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

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("AL")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg0]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("AH")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg1]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("PL")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg2]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("PH")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg3]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("SP")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg20]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("XT")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg21]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("T")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg22]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("ST0")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg23]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("ST1")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg24]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("PC")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg25]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("RPC")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg26]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("FP")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg28]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("DP")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg29]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("SXM")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg30]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("PM")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg31]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("OVM")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x20]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("PAGE0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x21]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("AMODE")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x22]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("EALLOW")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("INTM")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x23]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("IFR")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x24]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("IER")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x25]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("V")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x26]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("VOL")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("AR0")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg4]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("XAR0")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg5]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("AR1")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg6]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("XAR1")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg7]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("AR2")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg8]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("XAR2")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg9]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("AR3")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg10]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("XAR3")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg11]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("AR4")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg12]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("XAR4")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg13]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("AR5")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg14]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("XAR5")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg15]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("AR6")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg16]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("XAR6")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg17]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("AR7")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg18]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("XAR7")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg19]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("R0H")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("R1H")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("R2H")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x33]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("R3H")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x37]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("R4H")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("R5H")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("R6H")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x43]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("R7H")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x47]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("RB")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("STF")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x28]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg27]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("VCRC")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x50]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("VSTATUS")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x51]

	.dwendtag $C$DW$CU

