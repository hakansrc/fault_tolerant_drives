;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.1.LTS *
;* Date/Time created: Wed Nov 18 21:47:55 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla0 --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\admin\Documents\GitHub\fault_tolerant_drives\Software\MPC_WS\FCL_379XL\F2837x_RAM")

;**************************************************************
;* FUNCTION SYNONYMS                                          *
;**************************************************************
	.global	_VariableGet
_VariableGet	.set _SendData
	.global	_ArrayGet
_ArrayGet	.set _SendData
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("varSetTxtList")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_varSetTxtList")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("varSetBtnList")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_varSetBtnList")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("varSetSldrList")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_varSetSldrList")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("varGetList")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_varGetList")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("arrayGetList")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_arrayGetList")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("dataSetList")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_dataSetList")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("CommsOKflg")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_CommsOKflg")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("SerialCommsTimer")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_SerialCommsTimer")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external

	.global	_LowByteFlag
_LowByteFlag:	.usect	".ebss",1,1,0
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("LowByteFlag")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_LowByteFlag")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _LowByteFlag]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$9, DW_AT_external

	.global	_SendTaskPtr
_SendTaskPtr:	.usect	".ebss",1,1,0
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("SendTaskPtr")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_SendTaskPtr")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _SendTaskPtr]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$10, DW_AT_external

	.global	_RxChar
_RxChar:	.usect	".ebss",1,1,0
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("RxChar")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_RxChar")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _RxChar]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$11, DW_AT_external

	.global	_RxWord
_RxWord:	.usect	".ebss",1,1,0
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("RxWord")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_RxWord")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _RxWord]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$12, DW_AT_external

	.global	_TaskDoneFlag
_TaskDoneFlag:	.usect	".ebss",1,1,0
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("TaskDoneFlag")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_TaskDoneFlag")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _TaskDoneFlag]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$13, DW_AT_external

	.global	_NumWords
_NumWords:	.usect	".ebss",1,1,0
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("NumWords")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_NumWords")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr _NumWords]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$14, DW_AT_external

	.global	_wordsLeftToGet
_wordsLeftToGet:	.usect	".ebss",1,1,0
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("wordsLeftToGet")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_wordsLeftToGet")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _wordsLeftToGet]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$15, DW_AT_external

	.global	_dataOut16
_dataOut16:	.usect	".ebss",1,1,0
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("dataOut16")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_dataOut16")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr _dataOut16]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$16, DW_AT_external

	.global	_RcvTskPtrShdw
_RcvTskPtrShdw:	.usect	".ebss",1,1,0
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("RcvTskPtrShdw")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_RcvTskPtrShdw")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr _RcvTskPtrShdw]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$17, DW_AT_external

	.global	_delayer
_delayer:	.usect	".ebss",1,1,0
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("delayer")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_delayer")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _delayer]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$18, DW_AT_external

	.global	_MemGetPtr
_MemGetPtr:	.usect	".ebss",1,1,0
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("MemGetPtr")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_MemGetPtr")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _MemGetPtr]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$19, DW_AT_external

	.global	_MemGetAmount
_MemGetAmount:	.usect	".ebss",1,1,0
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("MemGetAmount")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_MemGetAmount")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _MemGetAmount]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$20, DW_AT_external

	.global	_MemSetPtr
_MemSetPtr:	.usect	".ebss",1,1,0
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("MemSetPtr")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_MemSetPtr")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _MemSetPtr]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$21, DW_AT_external

	.global	_RcvTaskPointer
_RcvTaskPointer:	.usect	".ebss",2,1,1
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("RcvTaskPointer")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_RcvTaskPointer")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _RcvTaskPointer]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$22, DW_AT_external

	.global	_dataOut32
_dataOut32:	.usect	".ebss",2,1,1
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("dataOut32")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_dataOut32")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _dataOut32]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$23, DW_AT_external

	.global	_memDataPtr16
_memDataPtr16:	.usect	".ebss",2,1,1
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("memDataPtr16")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_memDataPtr16")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr _memDataPtr16]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$24, DW_AT_external

	.global	_memDataPtr32
_memDataPtr32:	.usect	".ebss",2,1,1
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("memDataPtr32")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_memDataPtr32")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr _memDataPtr32]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$25, DW_AT_external

	.global	_MemGetAddress
_MemGetAddress:	.usect	".ebss",2,1,1
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("MemGetAddress")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_MemGetAddress")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _MemGetAddress]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$26, DW_AT_external

	.global	_MemSetValue
_MemSetValue:	.usect	".ebss",2,1,1
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("MemSetValue")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_MemSetValue")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _MemSetValue]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$27, DW_AT_external

	.global	_Temp
_Temp:	.usect	".ebss",2,1,1
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("Temp")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_Temp")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _Temp]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$28, DW_AT_external

	.global	_CmdPacket
_CmdPacket:	.usect	".ebss:_CmdPacket",6,1,0
	.clink ".ebss:_CmdPacket"
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("CmdPacket")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_CmdPacket")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _CmdPacket]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$29, DW_AT_external

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("SciaRegs")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_SciaRegs")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external

	.global	_CmdDispatcher
_CmdDispatcher:	.usect	".ebss:_CmdDispatcher",32,1,1
	.clink ".ebss:_CmdDispatcher"
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("CmdDispatcher")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_CmdDispatcher")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _CmdDispatcher]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$31, DW_AT_external

$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external

	.sblock	".ebss"
	.sblock	".ebss:_CmdDispatcher"
	.sblock	".ebss:_CmdPacket"
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\opt2000.exe C:\\Users\\admin\\AppData\\Local\\Temp\\{09ACEA78-CBBE-465A-9759-30DB6C787C5A} C:\\Users\\admin\\AppData\\Local\\Temp\\{7FBEAEFE-8B56-42B9-8F3E-3E3A86A64098} 
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\ac2000.exe -@C:\\Users\\admin\\AppData\\Local\\Temp\\{CC59C207-AC4B-498D-BD18-01D46BA0924D} 
	.sect	".text"
	.clink
	.global	_SendData

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("SendData")
	.dwattr $C$DW$33, DW_AT_low_pc(_SendData)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_SendData")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x1c5)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 454,column 1,is_stmt,address _SendData,isa 0

	.dwfde $C$DW$CIE, _SendData

;***************************************************************
;* FNAME: _SendData                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SendData:
;* AR4   assigned to $O$C1
;* AR4   assigned to $O$C2
;* AR4   assigned to $O$C3
;* AR4   assigned to $O$C4
;* AR4   assigned to $O$C5
;* AR4   assigned to $O$C6
;* AL    assigned to $O$C7
;* AR7   assigned to $O$v2
;* AR7   assigned to $O$v2
;* AR4   assigned to $O$v1
;* AR5   assigned to $O$v1
;* AR4   assigned to $O$K1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 456,column 3,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |456| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |456| 
        CMPB      AL,#4                 ; [CPU_ALU] |456| 
        B         $C$L8,EQ              ; [CPU_ALU] |456| 
        ; branchcc occurs ; [] |456| 
        CMPB      AL,#6                 ; [CPU_ALU] |456| 
        B         $C$L8,EQ              ; [CPU_ALU] |456| 
        ; branchcc occurs ; [] |456| 
        MOVW      DP,#_SendTaskPtr      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 501,column 3,is_stmt,isa 0
        MOV       AL,@_SendTaskPtr      ; [CPU_ALU] |501| 
        CMPB      AL,#2                 ; [CPU_ALU] |501| 
        B         $C$L1,GT              ; [CPU_ALU] |501| 
        ; branchcc occurs ; [] |501| 
        CMPB      AL,#2                 ; [CPU_ALU] |501| 
        B         $C$L4,EQ              ; [CPU_ALU] |501| 
        ; branchcc occurs ; [] |501| 
        CMPB      AL,#0                 ; [CPU_ALU] |501| 
        B         $C$L2,EQ              ; [CPU_ALU] |501| 
        ; branchcc occurs ; [] |501| 
        CMPB      AL,#1                 ; [CPU_ALU] |501| 
        B         $C$L3,EQ              ; [CPU_ALU] |501| 
        ; branchcc occurs ; [] |501| 
	.dwcfi	remember_state
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L1:    
        CMPB      AL,#3                 ; [CPU_ALU] |501| 
        B         $C$L5,EQ              ; [CPU_ALU] |501| 
        ; branchcc occurs ; [] |501| 
        CMPB      AL,#4                 ; [CPU_ALU] |501| 
        B         $C$L6,EQ              ; [CPU_ALU] |501| 
        ; branchcc occurs ; [] |501| 
	.dwcfi	remember_state
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L2:    
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 504,column 3,is_stmt,isa 0
        MOVL      XAR5,#_arrayGetList   ; [CPU_ARAU] |504| 
        MOV       ACC,*+XAR4[1] << 1    ; [CPU_ALU] |504| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |504| 
        MOVL      XAR5,*+XAR5[0]        ; [CPU_ALU] |504| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 505,column 3,is_stmt,isa 0
        MOVL      XAR6,*+XAR5[0]        ; [CPU_ALU] |505| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 506,column 3,is_stmt,isa 0
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |506| 
        MOV       @_wordsLeftToGet,AL   ; [CPU_ALU] |506| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 504,column 3,is_stmt,isa 0
        MOVL      @_memDataPtr32,XAR5   ; [CPU_ALU] |504| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 505,column 3,is_stmt,isa 0
        MOVL      @_dataOut32,XAR6      ; [CPU_ALU] |505| 
$C$L3:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 509,column 4,is_stmt,isa 0
        MOV       AL,@_wordsLeftToGet   ; [CPU_ALU] |509| 
        B         $C$L12,EQ             ; [CPU_ALU] |509| 
        ; branchcc occurs ; [] |509| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 511,column 5,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |511| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |511| 
        B         $C$L13,NTC            ; [CPU_ALU] |511| 
        ; branchcc occurs ; [] |511| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 513,column 6,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |513| 
        MOV       AL,@_dataOut32        ; [CPU_ALU] |513| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 514,column 6,is_stmt,isa 0
        MOVB      @_SendTaskPtr,#2,UNC  ; [CPU_ALU] |514| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 513,column 6,is_stmt,isa 0
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |513| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |513| 
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |513| 
$C$L4:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 530,column 4,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |530| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |530| 
        B         $C$L13,NTC            ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        MOVW      DP,#_dataOut32        ; [CPU_ARAU] 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 532,column 5,is_stmt,isa 0
        MOVL      ACC,@_dataOut32       ; [CPU_ALU] |532| 
        MOVB      XAR0,#9               ; [CPU_ALU] |532| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 533,column 5,is_stmt,isa 0
        MOVB      @_SendTaskPtr,#3,UNC  ; [CPU_ALU] |533| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 532,column 5,is_stmt,isa 0
        SFR       ACC,8                 ; [CPU_ALU] |532| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |532| 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |532| 
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |532| 
$C$L5:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 541,column 4,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |541| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |541| 
        B         $C$L13,NTC            ; [CPU_ALU] |541| 
        ; branchcc occurs ; [] |541| 
        MOVW      DP,#_dataOut32+1      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 543,column 5,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |543| 
        MOV       AL,@$BLOCKED(_dataOut32)+1 ; [CPU_ALU] |543| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 544,column 5,is_stmt,isa 0
        MOVB      @_SendTaskPtr,#4,UNC  ; [CPU_ALU] |544| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 543,column 5,is_stmt,isa 0
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |543| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |543| 
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |543| 
$C$L6:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 552,column 4,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |552| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |552| 
        B         $C$L13,NTC            ; [CPU_ALU] |552| 
        ; branchcc occurs ; [] |552| 
	.dwcfi	remember_state
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 554,column 5,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |554| 
        MOVW      DP,#_dataOut32        ; [CPU_ARAU] 
        MOVZ      AR6,*+XAR4[AR0]       ; [CPU_ALU] |554| 
        MOV       T,#24                 ; [CPU_ALU] |554| 
        MOVL      ACC,@_dataOut32       ; [CPU_ALU] |554| 
        ASRL      ACC,T                 ; [CPU_ALU] |554| 
        MOVB      AR6,AL.LSB            ; [CPU_ALU] |554| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 556,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_FPU] |556| 
        ADDL      ACC,@_memDataPtr32    ; [CPU_ALU] |556| 
        MOVL      @_memDataPtr32,ACC    ; [CPU_ALU] |556| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |556| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 554,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(_SciaRegs)+9,AR6 ; [CPU_ALU] |554| 
        MOVW      DP,#_dataOut32        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 557,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |557| 
        MOVL      @_dataOut32,ACC       ; [CPU_ALU] |557| 
$C$L7:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 558,column 5,is_stmt,isa 0
        DEC       @_wordsLeftToGet      ; [CPU_ALU] |558| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 559,column 5,is_stmt,isa 0
        MOVB      @_SendTaskPtr,#1,UNC  ; [CPU_ALU] |559| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L8:    
        MOVW      DP,#_SendTaskPtr      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 456,column 3,is_stmt,isa 0
        MOV       AL,@_SendTaskPtr      ; [CPU_ALU] |456| 
        B         $C$L9,EQ              ; [CPU_ALU] |456| 
        ; branchcc occurs ; [] |456| 
        CMPB      AL,#1                 ; [CPU_ALU] |456| 
        B         $C$L10,EQ             ; [CPU_ALU] |456| 
        ; branchcc occurs ; [] |456| 
        CMPB      AL,#2                 ; [CPU_ALU] |456| 
        B         $C$L11,EQ             ; [CPU_ALU] |456| 
        ; branchcc occurs ; [] |456| 
	.dwcfi	remember_state
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L9:    
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 460,column 4,is_stmt,isa 0
        MOV       ACC,*+XAR4[1] << 1    ; [CPU_ALU] |460| 
        MOVL      XAR4,#_varGetList     ; [CPU_ARAU] |460| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |460| 
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |460| 
        MOVL      @_memDataPtr16,XAR7   ; [CPU_ALU] |460| 
        MOVW      DP,#_CmdPacket+2      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 461,column 4,is_stmt,isa 0
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |461| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 462,column 4,is_stmt,isa 0
        MOV       AH,@$BLOCKED(_CmdPacket)+2 ; [CPU_ALU] |462| 
        MOVW      DP,#_dataOut16        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 461,column 4,is_stmt,isa 0
        MOV       @_dataOut16,AL        ; [CPU_ALU] |461| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 462,column 4,is_stmt,isa 0
        MOV       @_wordsLeftToGet,AH   ; [CPU_ALU] |462| 
$C$L10:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 466,column 4,is_stmt,isa 0
        MOV       AL,@_wordsLeftToGet   ; [CPU_ALU] |466| 
        B         $C$L12,EQ             ; [CPU_ALU] |466| 
        ; branchcc occurs ; [] |466| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 468,column 5,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |468| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |468| 
        B         $C$L13,NTC            ; [CPU_ALU] |468| 
        ; branchcc occurs ; [] |468| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 470,column 6,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |470| 
        MOV       AL,@_dataOut16        ; [CPU_ALU] |470| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 471,column 6,is_stmt,isa 0
        MOVB      @_SendTaskPtr,#2,UNC  ; [CPU_ALU] |471| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 470,column 6,is_stmt,isa 0
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |470| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |470| 
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |470| 
$C$L11:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 487,column 4,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |487| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |487| 
        B         $C$L13,NTC            ; [CPU_ALU] |487| 
        ; branchcc occurs ; [] |487| 
        MOVW      DP,#_dataOut16        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 489,column 5,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |489| 
        MOV       AL,@_dataOut16        ; [CPU_ALU] |489| 
        AND       AH,*+XAR4[AR0],#0xff00 ; [CPU_ALU] |489| 
        LSR       AL,8                  ; [CPU_ALU] |489| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
        OR        AL,AH                 ; [CPU_ALU] |489| 
        MOV       @$BLOCKED(_SciaRegs)+9,AL ; [CPU_ALU] |489| 
        MOVW      DP,#_memDataPtr16     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 491,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |491| 
        ADDL      ACC,@_memDataPtr16    ; [CPU_ALU] |491| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |491| 
        MOVL      @_memDataPtr16,ACC    ; [CPU_ALU] |491| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 492,column 5,is_stmt,isa 0
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |492| 
        MOV       @_dataOut16,AL        ; [CPU_ALU] |492| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 494,column 5,is_stmt,isa 0
        B         $C$L7,UNC             ; [CPU_ALU] |494| 
        ; branch occurs ; [] |494| 
$C$L12:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 481,column 5,is_stmt,isa 0
        MOV       @_SendTaskPtr,#0      ; [CPU_ALU] |481| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 482,column 5,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |482| 
$C$L13:    
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x235)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.clink
	.global	_TextSet

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("TextSet")
	.dwattr $C$DW$39, DW_AT_low_pc(_TextSet)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_TextSet")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x169)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 362,column 1,is_stmt,address _TextSet,isa 0

	.dwfde $C$DW$CIE, _TextSet

;***************************************************************
;* FNAME: _TextSet                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_TextSet:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 363,column 2,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |363| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#_varSetTxtList  ; [CPU_ARAU] |363| 
        MOV       ACC,*+XAR4[1] << 1    ; [CPU_ALU] |363| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |363| 
        MOVL      XAR7,*+XAR5[0]        ; [CPU_ALU] |363| 
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |363| 
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |363| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 365,column 2,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |365| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.clink
	.global	_SpareTsk08

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("SpareTsk08")
	.dwattr $C$DW$41, DW_AT_low_pc(_SpareTsk08)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_SpareTsk08")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x1bf)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 448,column 1,is_stmt,address _SpareTsk08,isa 0

	.dwfde $C$DW$CIE, _SpareTsk08

;***************************************************************
;* FNAME: _SpareTsk08                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SpareTsk08:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 449,column 2,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |449| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x1c2)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text"
	.clink
	.global	_SliderSet

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("SliderSet")
	.dwattr $C$DW$43, DW_AT_low_pc(_SliderSet)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_SliderSet")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x177)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 376,column 1,is_stmt,address _SliderSet,isa 0

	.dwfde $C$DW$CIE, _SliderSet

;***************************************************************
;* FNAME: _SliderSet                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SliderSet:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 377,column 2,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |377| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#_varSetSldrList ; [CPU_ARAU] |377| 
        MOV       ACC,*+XAR4[1] << 1    ; [CPU_ALU] |377| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |377| 
        MOVL      XAR7,*+XAR5[0]        ; [CPU_ALU] |377| 
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |377| 
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |377| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 379,column 2,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |379| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x17c)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"
	.clink
	.global	_EchoDataByte

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("EchoDataByte")
	.dwattr $C$DW$45, DW_AT_low_pc(_EchoDataByte)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_EchoDataByte")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x112)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 275,column 1,is_stmt,address _EchoDataByte,isa 0

	.dwfde $C$DW$CIE, _EchoDataByte

;***************************************************************
;* FNAME: _EchoDataByte                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_EchoDataByte:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 276,column 5,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |276| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |276| 
        B         $C$L14,NTC            ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 278,column 6,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |278| 
        MOVW      DP,#_RxChar           ; [CPU_ARAU] 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |278| 
        MOV       AL,@_RxChar           ; [CPU_ALU] |278| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 279,column 3,is_stmt,isa 0
        MOVL      XAR4,#_PackWord       ; [CPU_ARAU] |279| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 278,column 6,is_stmt,isa 0
        MOVB      AH,AL.LSB             ; [CPU_ALU] |278| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 279,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_FPU] |279| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 278,column 6,is_stmt,isa 0
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |278| 
$C$L14:    
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.clink
	.global	_GetDataByte

$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("GetDataByte")
	.dwattr $C$DW$47, DW_AT_low_pc(_GetDataByte)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_GetDataByte")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0xff)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 256,column 1,is_stmt,address _GetDataByte,isa 0

	.dwfde $C$DW$CIE, _GetDataByte

;***************************************************************
;* FNAME: _GetDataByte                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetDataByte:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_SciaRegs+5       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 257,column 2,is_stmt,isa 0
        TBIT      @$BLOCKED(_SciaRegs)+5,#6 ; [CPU_ALU] |257| 
        B         $C$L15,TC             ; [CPU_ALU] |257| 
        ; branchcc occurs ; [] |257| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 265,column 7,is_stmt,isa 0
        CMP       @_SerialCommsTimer,#500 ; [CPU_ALU] |265| 
        B         $C$L18,LEQ            ; [CPU_ALU] |265| 
        ; branchcc occurs ; [] |265| 
        MOVW      DP,#_CommsOKflg       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 267,column 3,is_stmt,isa 0
        MOV       @_CommsOKflg,#0       ; [CPU_ALU] |267| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 268,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetCmdByte     ; [CPU_ARAU] |268| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 269,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_ALU] |269| 
        B         $C$L17,UNC            ; [CPU_ALU] |269| 
        ; branch occurs ; [] |269| 
$C$L15:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 259,column 3,is_stmt,isa 0
        MOV       AL,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |259| 
        MOVW      DP,#_RxChar           ; [CPU_ARAU] 
        MOV       @_RxChar,AL           ; [CPU_ALU] |259| 
        MOVW      DP,#_SciaRegs+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 276,column 5,is_stmt,isa 0
        TBIT      @$BLOCKED(_SciaRegs)+4,#7 ; [CPU_ALU] |276| 
        B         $C$L16,TC             ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        MOVL      XAR4,#_EchoDataByte   ; [CPU_ARAU] 
        B         $C$L17,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L16:    
        MOVW      DP,#_RxChar           ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 278,column 6,is_stmt,isa 0
        MOVB      AL.LSB,@_RxChar       ; [CPU_ALU] |278| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 279,column 3,is_stmt,isa 0
        MOVL      XAR4,#_PackWord       ; [CPU_ARAU] |279| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 278,column 6,is_stmt,isa 0
        MOVB      @$BLOCKED(_SciaRegs)+9,AL.LSB ; [CPU_ALU] |278| 
$C$L17:    
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 279,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |279| 
$C$L18:    
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text"
	.clink
	.global	_PackWord

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("PackWord")
	.dwattr $C$DW$49, DW_AT_low_pc(_PackWord)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_PackWord")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 285,column 1,is_stmt,address _PackWord,isa 0

	.dwfde $C$DW$CIE, _PackWord

;***************************************************************
;* FNAME: _PackWord                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_PackWord:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_LowByteFlag      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 286,column 2,is_stmt,isa 0
        MOV       AL,@_LowByteFlag      ; [CPU_ALU] |286| 
        CMPB      AL,#1                 ; [CPU_ALU] |286| 
        B         $C$L19,EQ             ; [CPU_ALU] |286| 
        ; branchcc occurs ; [] |286| 
	.dwcfi	remember_state
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 296,column 3,is_stmt,isa 0
        MOV       ACC,@_RxChar << #8    ; [CPU_ALU] |296| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 299,column 3,is_stmt,isa 0
        MOVL      XAR4,#_CmdInterpreter ; [CPU_ARAU] |299| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 297,column 3,is_stmt,isa 0
        MOVB      @_LowByteFlag,#1,UNC  ; [CPU_ALU] |297| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 301,column 3,is_stmt,isa 0
        MOV       @_TaskDoneFlag,#0     ; [CPU_ALU] |301| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 296,column 3,is_stmt,isa 0
        OR        @_RxWord,AL           ; [CPU_ALU] |296| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 299,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |299| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 298,column 3,is_stmt,isa 0
        MOV       AL,@_RxWord           ; [CPU_ALU] |298| 
        MOVW      DP,#_CmdPacket+2      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_CmdPacket)+2,AL ; [CPU_ALU] |298| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L19:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 288,column 3,is_stmt,isa 0
        MOV       AL,@_RxChar           ; [CPU_ALU] |288| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 290,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetDataByte    ; [CPU_ARAU] |290| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 289,column 3,is_stmt,isa 0
        MOV       @_LowByteFlag,#0      ; [CPU_ALU] |289| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 288,column 3,is_stmt,isa 0
        MOV       @_RxWord,AL           ; [CPU_ALU] |288| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 290,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |290| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 292,column 3,is_stmt,isa 0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_GetDataByte")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #_GetDataByte         ; [CPU_ALU] |292| 
        ; call occurs [#_GetDataByte] ; [] |292| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x12f)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.clink
	.global	_EchoSizeByte

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("EchoSizeByte")
	.dwattr $C$DW$53, DW_AT_low_pc(_EchoSizeByte)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_EchoSizeByte")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0xf2)
	.dwattr $C$DW$53, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 243,column 1,is_stmt,address _EchoSizeByte,isa 0

	.dwfde $C$DW$CIE, _EchoSizeByte

;***************************************************************
;* FNAME: _EchoSizeByte                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_EchoSizeByte:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 244,column 5,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |244| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |244| 
        B         $C$L20,NTC            ; [CPU_ALU] |244| 
        ; branchcc occurs ; [] |244| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 246,column 6,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |246| 
        MOVW      DP,#_RxChar           ; [CPU_ARAU] 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |246| 
        MOV       AL,@_RxChar           ; [CPU_ALU] |246| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 247,column 6,is_stmt,isa 0
        MOVZ      AR6,@_RxChar          ; [CPU_ALU] |247| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 248,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetDataByte    ; [CPU_ARAU] |248| 
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |248| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 246,column 6,is_stmt,isa 0
        MOVB      AH,AL.LSB             ; [CPU_ALU] |246| 
        MOVW      DP,#_CmdPacket+1      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 247,column 6,is_stmt,isa 0
        MOV       @$BLOCKED(_CmdPacket)+1,AR6 ; [CPU_FPU] |247| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 251,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_FPU] |251| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 246,column 6,is_stmt,isa 0
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |246| 
$C$L20:    
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0xfd)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text"
	.clink
	.global	_GetSizeByte

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("GetSizeByte")
	.dwattr $C$DW$55, DW_AT_low_pc(_GetSizeByte)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_GetSizeByte")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 224,column 1,is_stmt,address _GetSizeByte,isa 0

	.dwfde $C$DW$CIE, _GetSizeByte

;***************************************************************
;* FNAME: _GetSizeByte                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetSizeByte:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_SciaRegs+5       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 225,column 2,is_stmt,isa 0
        TBIT      @$BLOCKED(_SciaRegs)+5,#6 ; [CPU_ALU] |225| 
        B         $C$L21,TC             ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 234,column 7,is_stmt,isa 0
        CMP       @_SerialCommsTimer,#1000 ; [CPU_ALU] |234| 
        B         $C$L22,LEQ            ; [CPU_ALU] |234| 
        ; branchcc occurs ; [] |234| 
	.dwcfi	remember_state
        MOVW      DP,#_CommsOKflg       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 236,column 3,is_stmt,isa 0
        MOV       @_CommsOKflg,#0       ; [CPU_ALU] |236| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 237,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetCmdByte     ; [CPU_ARAU] |237| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 238,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_ALU] |238| 
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 237,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |237| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L21:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 227,column 3,is_stmt,isa 0
        MOV       AL,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |227| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 229,column 3,is_stmt,isa 0
        MOVL      XAR4,#_EchoSizeByte   ; [CPU_ARAU] |229| 
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 227,column 3,is_stmt,isa 0
        MOV       @_RxChar,AL           ; [CPU_ALU] |227| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 229,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |229| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 231,column 3,is_stmt,isa 0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_EchoSizeByte")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_EchoSizeByte        ; [CPU_ALU] |231| 
        ; call occurs [#_EchoSizeByte] ; [] |231| 
$C$L22:    
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.clink
	.global	_EchoCmdByte

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("EchoCmdByte")
	.dwattr $C$DW$59, DW_AT_low_pc(_EchoCmdByte)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_EchoCmdByte")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0xd1)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 210,column 1,is_stmt,address _EchoCmdByte,isa 0

	.dwfde $C$DW$CIE, _EchoCmdByte

;***************************************************************
;* FNAME: _EchoCmdByte                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_EchoCmdByte:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 211,column 5,is_stmt,isa 0
        MOVL      XAR4,#_SciaRegs       ; [CPU_ARAU] |211| 
        TBIT      *+XAR4[4],#7          ; [CPU_ALU] |211| 
        B         $C$L23,NTC            ; [CPU_ALU] |211| 
        ; branchcc occurs ; [] |211| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 213,column 6,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |213| 
        MOVW      DP,#_RxChar           ; [CPU_ARAU] 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |213| 
        MOV       AL,@_RxChar           ; [CPU_ALU] |213| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 214,column 6,is_stmt,isa 0
        MOVZ      AR6,@_RxChar          ; [CPU_ALU] |214| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 215,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetSizeByte    ; [CPU_ARAU] |215| 
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |215| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 213,column 6,is_stmt,isa 0
        MOVB      AH,AL.LSB             ; [CPU_ALU] |213| 
        MOVW      DP,#_CmdPacket        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 214,column 6,is_stmt,isa 0
        MOV       @$BLOCKED(_CmdPacket),AR6 ; [CPU_FPU] |214| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 218,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_FPU] |218| 
        MOVW      DP,#_SciaRegs+9       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 213,column 6,is_stmt,isa 0
        MOV       @$BLOCKED(_SciaRegs)+9,AH ; [CPU_ALU] |213| 
$C$L23:    
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.clink
	.global	_DataSet32

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("DataSet32")
	.dwattr $C$DW$61, DW_AT_low_pc(_DataSet32)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_DataSet32")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x1a7)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 424,column 1,is_stmt,address _DataSet32,isa 0

	.dwfde $C$DW$CIE, _DataSet32

;***************************************************************
;* FNAME: _DataSet32                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DataSet32:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_MemSetPtr        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 425,column 2,is_stmt,isa 0
        MOV       AL,@_MemSetPtr        ; [CPU_ALU] |425| 
        B         $C$L24,EQ             ; [CPU_ALU] |425| 
        ; branchcc occurs ; [] |425| 
        CMPB      AL,#1                 ; [CPU_ALU] |425| 
        B         $C$L26,NEQ            ; [CPU_ALU] |425| 
        ; branchcc occurs ; [] |425| 
        MOVW      DP,#_CmdPacket+2      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 435,column 4,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |435| 
        MOVZ      AR6,@$BLOCKED(_CmdPacket)+2 ; [CPU_ALU] |435| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVU      ACC,*+XAR4[2]         ; [CPU_ALU] |435| 
        MOVW      DP,#_Temp             ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 436,column 4,is_stmt,isa 0
        LSL       ACC,16                ; [CPU_ALU] |436| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 435,column 4,is_stmt,isa 0
        MOVL      @_Temp,XAR6           ; [CPU_ALU] |435| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 436,column 4,is_stmt,isa 0
        ADDL      @_MemSetValue,ACC     ; [CPU_ALU] |436| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 438,column 4,is_stmt,isa 0
        MOV       ACC,*+XAR4[1] << 1    ; [CPU_FPU] |438| 
        MOVL      XAR4,#_dataSetList    ; [CPU_ARAU] |438| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |438| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |438| 
        MOVL      ACC,@_MemSetValue     ; [CPU_ALU] |438| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 440,column 4,is_stmt,isa 0
        MOV       @_MemSetPtr,#0        ; [CPU_ALU] |440| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 438,column 4,is_stmt,isa 0
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |438| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 442,column 4,is_stmt,isa 0
        B         $C$L25,UNC            ; [CPU_ALU] |442| 
        ; branch occurs ; [] |442| 
$C$L24:    
        MOVW      DP,#_CmdPacket+2      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 428,column 4,is_stmt,isa 0
        MOVU      ACC,@$BLOCKED(_CmdPacket)+2 ; [CPU_ALU] |428| 
        MOVW      DP,#_MemSetPtr        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 429,column 4,is_stmt,isa 0
        MOVB      @_MemSetPtr,#1,UNC    ; [CPU_ALU] |429| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 428,column 4,is_stmt,isa 0
        MOVL      @_MemSetValue,ACC     ; [CPU_ALU] |428| 
$C$L25:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 431,column 4,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |431| 
$C$L26:    
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.clink
	.global	_DataGet

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("DataGet")
	.dwattr $C$DW$63, DW_AT_low_pc(_DataGet)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_DataGet")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x189)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 394,column 1,is_stmt,address _DataGet,isa 0

	.dwfde $C$DW$CIE, _DataGet

;***************************************************************
;* FNAME: _DataGet                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DataGet:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_MemGetPtr        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 395,column 2,is_stmt,isa 0
        MOV       AL,@_MemGetPtr        ; [CPU_ALU] |395| 
        B         $C$L27,EQ             ; [CPU_ALU] |395| 
        ; branchcc occurs ; [] |395| 
        CMPB      AL,#1                 ; [CPU_ALU] |395| 
        B         $C$L28,NEQ            ; [CPU_ALU] |395| 
        ; branchcc occurs ; [] |395| 
        MOVW      DP,#_CmdPacket+2      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 407,column 4,is_stmt,isa 0
        MOVZ      AR6,@$BLOCKED(_CmdPacket)+2 ; [CPU_ALU] |407| 
        MOVU      ACC,@$BLOCKED(_CmdPacket)+2 ; [CPU_ALU] |407| 
        MOVW      DP,#_Temp             ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 408,column 4,is_stmt,isa 0
        LSL       ACC,16                ; [CPU_ALU] |408| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 407,column 4,is_stmt,isa 0
        MOVL      @_Temp,XAR6           ; [CPU_FPU] |407| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 408,column 4,is_stmt,isa 0
        ADDL      @_MemGetAddress,ACC   ; [CPU_ALU] |408| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 410,column 4,is_stmt,isa 0
        MOVL      XAR7,@_MemGetAddress  ; [CPU_ALU] |410| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 409,column 4,is_stmt,isa 0
        MOVL      ACC,@_MemGetAddress   ; [CPU_ALU] |409| 
        MOVL      @_memDataPtr16,ACC    ; [CPU_ALU] |409| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 410,column 4,is_stmt,isa 0
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |410| 
        MOV       @_dataOut16,AL        ; [CPU_ALU] |410| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 411,column 4,is_stmt,isa 0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_SendData")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_SendData            ; [CPU_ALU] |411| 
        ; call occurs [#_SendData] ; [] |411| 
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 413,column 4,is_stmt,isa 0
        MOV       AL,@_TaskDoneFlag     ; [CPU_ALU] |413| 
        CMPB      AL,#1                 ; [CPU_ALU] |413| 
        B         $C$L28,NEQ            ; [CPU_ALU] |413| 
        ; branchcc occurs ; [] |413| 
	.dwcfi	remember_state
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 415,column 5,is_stmt,isa 0
        MOV       @_MemGetPtr,#0        ; [CPU_ALU] |415| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L27:    
        MOVW      DP,#_CmdPacket+2      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 398,column 4,is_stmt,isa 0
        MOVU      ACC,@$BLOCKED(_CmdPacket)+2 ; [CPU_ALU] |398| 
        MOVW      DP,#_MemGetPtr        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 399,column 4,is_stmt,isa 0
        MOVB      @_MemGetPtr,#1,UNC    ; [CPU_ALU] |399| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 401,column 4,is_stmt,isa 0
        MOVB      @_wordsLeftToGet,#1,UNC ; [CPU_ALU] |401| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 402,column 4,is_stmt,isa 0
        MOVB      @_SendTaskPtr,#1,UNC  ; [CPU_ALU] |402| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 403,column 4,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |403| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 398,column 4,is_stmt,isa 0
        MOVL      @_MemGetAddress,ACC   ; [CPU_ALU] |398| 
$C$L28:    
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x1a5)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text"
	.clink
	.global	_ButtonSet

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("ButtonSet")
	.dwattr $C$DW$67, DW_AT_low_pc(_ButtonSet)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_ButtonSet")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x170)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 369,column 1,is_stmt,address _ButtonSet,isa 0

	.dwfde $C$DW$CIE, _ButtonSet

;***************************************************************
;* FNAME: _ButtonSet                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ButtonSet:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 370,column 2,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |370| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#_varSetBtnList  ; [CPU_ARAU] |370| 
        MOV       ACC,*+XAR4[1] << 1    ; [CPU_ALU] |370| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |370| 
        MOVL      XAR7,*+XAR5[0]        ; [CPU_ALU] |370| 
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |370| 
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |370| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 372,column 2,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |372| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x175)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.clink
	.global	_LifePulseTsk

$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("LifePulseTsk")
	.dwattr $C$DW$69, DW_AT_low_pc(_LifePulseTsk)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_LifePulseTsk")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x149)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 330,column 1,is_stmt,address _LifePulseTsk,isa 0

	.dwfde $C$DW$CIE, _LifePulseTsk

;***************************************************************
;* FNAME: _LifePulseTsk                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_LifePulseTsk:
;* AR4   assigned to $O$C1
;* AR4   assigned to $O$C2
;* AR4   assigned to $O$C3
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 331,column 2,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |331| 
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |331| 
        B         $C$L29,NEQ            ; [CPU_ALU] |331| 
        ; branchcc occurs ; [] |331| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |331| 
        B         $C$L29,NEQ            ; [CPU_ALU] |331| 
        ; branchcc occurs ; [] |331| 
        MOVW      DP,#_GpioDataRegs+3   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 336,column 3,is_stmt,isa 0
        OR        @$BLOCKED(_GpioDataRegs)+3,#0x8000 ; [CPU_ALU] |336| 
$C$L29:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 339,column 2,is_stmt,isa 0
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |339| 
        CMPB      AL,#1                 ; [CPU_ALU] |339| 
        B         $C$L30,NEQ            ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |339| 
        B         $C$L30,NEQ            ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 344,column 3,is_stmt,isa 0
        OR        @$BLOCKED(_GpioDataRegs)+5,#0x8000 ; [CPU_ALU] |344| 
$C$L30:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 347,column 2,is_stmt,isa 0
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |347| 
        CMPB      AL,#2                 ; [CPU_ALU] |347| 
        B         $C$L31,NEQ            ; [CPU_ALU] |347| 
        ; branchcc occurs ; [] |347| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |347| 
        B         $C$L31,NEQ            ; [CPU_ALU] |347| 
        ; branchcc occurs ; [] |347| 
        MOVW      DP,#_GpioDataRegs+7   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 352,column 3,is_stmt,isa 0
        OR        @$BLOCKED(_GpioDataRegs)+7,#0x8000 ; [CPU_ALU] |352| 
$C$L31:    
        MOVW      DP,#_CommsOKflg       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 356,column 2,is_stmt,isa 0
        MOVB      @_CommsOKflg,#1,UNC   ; [CPU_ALU] |356| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 357,column 2,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_ALU] |357| 
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 358,column 2,is_stmt,isa 0
        MOVB      @_TaskDoneFlag,#1,UNC ; [CPU_ALU] |358| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$69, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x167)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.clink
	.global	_GetCmdByte

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("GetCmdByte")
	.dwattr $C$DW$71, DW_AT_low_pc(_GetCmdByte)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_GetCmdByte")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 175,column 1,is_stmt,address _GetCmdByte,isa 0

	.dwfde $C$DW$CIE, _GetCmdByte

;***************************************************************
;* FNAME: _GetCmdByte                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_GetCmdByte:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_SciaRegs+5       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 176,column 2,is_stmt,isa 0
        TBIT      @$BLOCKED(_SciaRegs)+5,#6 ; [CPU_ALU] |176| 
        B         $C$L33,TC             ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 185,column 7,is_stmt,isa 0
        TBIT      @$BLOCKED(_SciaRegs)+5,#5 ; [CPU_ALU] |185| 
        B         $C$L32,TC             ; [CPU_ALU] |185| 
        ; branchcc occurs ; [] |185| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
        CMP       @_SerialCommsTimer,#2500 ; [CPU_ALU] |185| 
        B         $C$L34,LEQ            ; [CPU_ALU] |185| 
        ; branchcc occurs ; [] |185| 
$C$L32:    
        MOVW      DP,#_SciaRegs         ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 189,column 4,is_stmt,isa 0
        MOVB      @$BLOCKED(_SciaRegs),#7,UNC ; [CPU_ALU] |189| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 192,column 4,is_stmt,isa 0
        MOVB      @$BLOCKED(_SciaRegs)+1,#3,UNC ; [CPU_ALU] |192| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 194,column 4,is_stmt,isa 0
        MOV       @$BLOCKED(_SciaRegs)+4,#0 ; [CPU_ALU] |194| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 196,column 4,is_stmt,isa 0
        MOVB      @$BLOCKED(_SciaRegs)+1,#35,UNC ; [CPU_ALU] |196| 
 RPT#8 || NOP
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 205,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetCmdByte     ; [CPU_ARAU] |205| 
        MOVW      DP,#_SendTaskPtr      ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 201,column 3,is_stmt,isa 0
        MOV       @_SendTaskPtr,#0      ; [CPU_ALU] |201| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 202,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_ALU] |202| 
        MOVW      DP,#_CommsOKflg       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 204,column 3,is_stmt,isa 0
        MOV       @_CommsOKflg,#0       ; [CPU_ALU] |204| 
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 205,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |205| 
        B         $C$L34,UNC            ; [CPU_ALU] |205| 
        ; branch occurs ; [] |205| 
$C$L33:    
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 178,column 3,is_stmt,isa 0
        MOV       AL,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |178| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 179,column 3,is_stmt,isa 0
        MOVL      XAR4,#_EchoCmdByte    ; [CPU_ARAU] |179| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 180,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_ALU] |180| 
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 178,column 3,is_stmt,isa 0
        MOV       @_RxChar,AL           ; [CPU_ALU] |178| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 179,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |179| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 182,column 3,is_stmt,isa 0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_EchoCmdByte")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_EchoCmdByte         ; [CPU_ALU] |182| 
        ; call occurs [#_EchoCmdByte] ; [] |182| 
$C$L34:    
        SPM       #0                    ; [CPU_ALU] 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0xcf)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.clink
	.global	_CmdInterpreter

$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("CmdInterpreter")
	.dwattr $C$DW$74, DW_AT_low_pc(_CmdInterpreter)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_CmdInterpreter")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x131)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 306,column 1,is_stmt,address _CmdInterpreter,isa 0

	.dwfde $C$DW$CIE, _CmdInterpreter

;***************************************************************
;* FNAME: _CmdInterpreter               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CmdInterpreter:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 307,column 2,is_stmt,isa 0
        MOV       AL,@_TaskDoneFlag     ; [CPU_ALU] |307| 
        B         $C$L35,NEQ            ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVW      DP,#_CmdPacket        ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 309,column 4,is_stmt,isa 0
        MOVL      XAR4,#_CmdDispatcher  ; [CPU_ARAU] |309| 
        MOV       ACC,@$BLOCKED(_CmdPacket) << 1 ; [CPU_ALU] |309| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |309| 
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |309| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_call
	.dwattr $C$DW$75, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |309| 
        ; call occurs [XAR7] ; [] |309| 
$C$L35:    
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 313,column 2,is_stmt,isa 0
        CMP       @_SerialCommsTimer,#2500 ; [CPU_ALU] |313| 
        B         $C$L36,LEQ            ; [CPU_ALU] |313| 
        ; branchcc occurs ; [] |313| 
        MOVW      DP,#_CommsOKflg       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 315,column 3,is_stmt,isa 0
        MOV       @_CommsOKflg,#0       ; [CPU_ALU] |315| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 316,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetCmdByte     ; [CPU_ARAU] |316| 
        MOVW      DP,#_SerialCommsTimer ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 317,column 3,is_stmt,isa 0
        MOV       @_SerialCommsTimer,#0 ; [CPU_ALU] |317| 
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 316,column 3,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |316| 
$C$L36:    
        MOVW      DP,#_TaskDoneFlag     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 319,column 2,is_stmt,isa 0
        MOV       AL,@_TaskDoneFlag     ; [CPU_ALU] |319| 
        CMPB      AL,#1                 ; [CPU_ALU] |319| 
        B         $C$L37,NEQ            ; [CPU_ALU] |319| 
        ; branchcc occurs ; [] |319| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 321,column 3,is_stmt,isa 0
        MOVL      XAR4,#_GetCmdByte     ; [CPU_ARAU] |321| 
        MOVL      @_RcvTaskPointer,XAR4 ; [CPU_ALU] |321| 
$C$L37:    
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$74, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text"
	.clink
	.global	_SerialHostComms

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("SerialHostComms")
	.dwattr $C$DW$77, DW_AT_low_pc(_SerialHostComms)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_SerialHostComms")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0xa8)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 169,column 1,is_stmt,address _SerialHostComms,isa 0

	.dwfde $C$DW$CIE, _SerialHostComms

;***************************************************************
;* FNAME: _SerialHostComms              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SerialHostComms:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_RcvTaskPointer   ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 170,column 2,is_stmt,isa 0
        MOVL      XAR7,@_RcvTaskPointer ; [CPU_ALU] |170| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_call
	.dwattr $C$DW$78, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |170| 
        ; call occurs [XAR7] ; [] |170| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0xab)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.clink
	.global	_SCIA_Init

$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("SCIA_Init")
	.dwattr $C$DW$80, DW_AT_low_pc(_SCIA_Init)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_SCIA_Init")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_TI_begin_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x5b)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(-28)
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 92,column 1,is_stmt,address _SCIA_Init,isa 0

	.dwfde $C$DW$CIE, _SCIA_Init
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("SCI_VBUS_CLOCKRATE")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_SCI_VBUS_CLOCKRATE")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg0]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("SCI_BAUDRATE")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_SCI_BAUDRATE")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -30]


;***************************************************************
;* FNAME: _SCIA_Init                    FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 18 Auto,  6 SOE     *
;***************************************************************

_SCIA_Init:
;* AR5   assigned to $O$C1
;* AR5   assigned to $O$C2
;* AL    assigned to $O$C3
;* AR4   assigned to $O$U50
;* AR6   assigned to _SCI_VBUS_CLOCKRATE
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("SCI_VBUS_CLOCKRATE")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_SCI_VBUS_CLOCKRATE")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg16]

;* AL    assigned to _SCI_BAUDRATE
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("SCI_BAUDRATE")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_SCI_BAUDRATE")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#20                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -28
        MOVL      XAR6,ACC              ; [CPU_ALU] |92| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 99,column 3,is_stmt,isa 0
        MOVL      XAR5,#_SciaRegs       ; [CPU_ARAU] |99| 
        MOVW      DP,#_SciaRegs+4       ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 92,column 1,is_stmt,isa 0
        MOVL      ACC,*-SP[30]          ; [CPU_ALU] |92| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 99,column 3,is_stmt,isa 0
        MOVB      *+XAR5[0],#7,UNC      ; [CPU_ALU] |99| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 109,column 5,is_stmt,isa 0
        LSL       ACC,3                 ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 102,column 2,is_stmt,isa 0
        MOVB      *+XAR5[1],#3,UNC      ; [CPU_ALU] |102| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 104,column 2,is_stmt,isa 0
        MOVB      *+XAR5[4],#3,UNC      ; [CPU_ALU] |104| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 105,column 2,is_stmt,isa 0
        AND       *+XAR5[4],#0xfffe     ; [CPU_ALU] |105| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 106,column 2,is_stmt,isa 0
        AND       @$BLOCKED(_SciaRegs)+4,#0xfffd ; [CPU_FPU] |106| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 109,column 5,is_stmt,isa 0
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |109| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |109| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("L$$DIV")
	.dwattr $C$DW$85, DW_AT_TI_call

        FFC       XAR7,#L$$DIV          ; [CPU_ALU] |109| 
        ; call occurs [#L$$DIV] ; [] |109| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOVL      XAR4,#_CmdPacket      ; [CPU_ARAU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 115,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |115| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 118,column 5,is_stmt,isa 0
        MOVB      XAR1,#15              ; [CPU_ALU] |118| 
        MOVW      DP,#_memDataPtr16     ; [CPU_ARAU] 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 109,column 5,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 122,column 2,is_stmt,isa 0
        MOV       @_SendTaskPtr,#0      ; [CPU_ALU] |122| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 123,column 2,is_stmt,isa 0
        MOVB      @_LowByteFlag,#1,UNC  ; [CPU_ALU] |123| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 125,column 2,is_stmt,isa 0
        MOV       @_dataOut16,#0        ; [CPU_ALU] |125| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 109,column 5,is_stmt,isa 0
        MOV       AH,AL                 ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 128,column 2,is_stmt,isa 0
        MOVL      XAR6,@_memDataPtr16   ; [CPU_ALU] |128| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 126,column 2,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_ALU] |126| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 109,column 5,is_stmt,isa 0
        LSR       AH,8                  ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 110,column 2,is_stmt,isa 0
        ANDB      AL,#255               ; [CPU_ALU] |110| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 109,column 5,is_stmt,isa 0
        MOV       *+XAR5[2],AH          ; [CPU_ALU] |109| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 128,column 2,is_stmt,isa 0
        MOV       *+XAR6[0],#0          ; [CPU_ALU] |128| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 110,column 2,is_stmt,isa 0
        MOV       *+XAR5[3],AL          ; [CPU_ALU] |110| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 151,column 3,is_stmt,isa 0
        MOVL      XAR6,#_LifePulseTsk   ; [CPU_ARAU] |151| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOV       *XAR4++,#0            ; [CPU_ALU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 129,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |129| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 133,column 2,is_stmt,isa 0
        MOV       @_delayer,#0          ; [CPU_ALU] |133| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 135,column 2,is_stmt,isa 0
        MOV       @_MemGetPtr,#0        ; [CPU_ALU] |135| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 137,column 2,is_stmt,isa 0
        MOV       @_MemGetAmount,#0     ; [CPU_ALU] |137| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 139,column 2,is_stmt,isa 0
        MOV       @_MemSetPtr,#0        ; [CPU_ALU] |139| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 112,column 2,is_stmt,isa 0
        MOVB      *+XAR5[1],#35,UNC     ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 126,column 2,is_stmt,isa 0
        MOVL      *-SP[6],P             ; [CPU_ALU] |126| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 129,column 2,is_stmt,isa 0
        MOVL      XT,ACC                ; [CPU_ALU] |129| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 151,column 3,is_stmt,isa 0
        MOVL      *-SP[12],XAR6         ; [CPU_ALU] |151| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOV       *XAR4++,#0            ; [CPU_ALU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 152,column 3,is_stmt,isa 0
        MOVL      XAR6,#_TextSet        ; [CPU_ARAU] |152| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 115,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],#32832    ; [CPU_ALU] |115| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 129,column 2,is_stmt,isa 0
        MOVL      ACC,@_memDataPtr32    ; [CPU_ALU] |129| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 152,column 3,is_stmt,isa 0
        MOVL      *-SP[14],XAR6         ; [CPU_ALU] |152| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 116,column 5,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOV       *XAR4++,#0            ; [CPU_ALU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 153,column 3,is_stmt,isa 0
        MOVL      XAR6,#_ButtonSet      ; [CPU_ARAU] |153| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 129,column 2,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |129| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 116,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],#8271     ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 153,column 3,is_stmt,isa 0
        MOVL      *-SP[16],XAR6         ; [CPU_ALU] |153| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 117,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |117| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 154,column 3,is_stmt,isa 0
        MOVL      XAR6,#_SliderSet      ; [CPU_ARAU] |154| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOV       *XAR4++,#0            ; [CPU_ALU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 154,column 3,is_stmt,isa 0
        MOVL      *-SP[18],XAR6         ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 117,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |117| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 155,column 3,is_stmt,isa 0
        MOVL      XAR6,#_VariableGet    ; [CPU_ARAU] |155| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 120,column 2,is_stmt,isa 0
        MOVL      XAR0,#_GetCmdByte     ; [CPU_ARAU] |120| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 155,column 3,is_stmt,isa 0
        MOVL      *-SP[20],XAR6         ; [CPU_ALU] |155| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 120,column 2,is_stmt,isa 0
        MOVL      *-SP[4],XAR0          ; [CPU_ALU] |120| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 118,column 5,is_stmt,isa 0
        AND       AL,*+XAR5[AR1],#0xfff7 ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 140,column 2,is_stmt,isa 0
        MOVL      XAR0,*-SP[8]          ; [CPU_ALU] |140| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 131,column 2,is_stmt,isa 0
        MOV       @_RcvTskPtrShdw,#0    ; [CPU_ALU] |131| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 159,column 3,is_stmt,isa 0
        MOVL      XAR6,#_SpareTsk08     ; [CPU_ARAU] |159| 
        MOVB      XAR1,#16              ; [CPU_ALU] |159| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 129,column 2,is_stmt,isa 0
        MOVL      *+XAR0[0],XT          ; [CPU_ALU] |129| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 151,column 3,is_stmt,isa 0
        MOVL      XAR5,#_CmdDispatcher  ; [CPU_ARAU] |151| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 118,column 5,is_stmt,isa 0
        MOVL      XAR0,*-SP[12]         ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOV       *XAR4++,#0            ; [CPU_ALU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 159,column 3,is_stmt,isa 0
        MOVL      *+XAR5[AR1],XAR6      ; [CPU_ALU] |159| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 140,column 2,is_stmt,isa 0
        MOVL      @_MemSetValue,P       ; [CPU_ALU] |140| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 151,column 3,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR0        ; [CPU_ALU] |151| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 139,column 2,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |139| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 151,column 3,is_stmt,isa 0
        MOVL      XAR0,*-SP[14]         ; [CPU_ALU] |151| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 118,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 154,column 3,is_stmt,isa 0
        MOVL      XT,*-SP[20]           ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 120,column 2,is_stmt,isa 0
        MOVL      @_RcvTaskPointer,XAR6 ; [CPU_ALU] |120| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 152,column 3,is_stmt,isa 0
        MOVL      *+XAR5[2],XAR0        ; [CPU_ALU] |152| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 120,column 2,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |120| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 156,column 3,is_stmt,isa 0
        MOVL      XAR3,#_ArrayGet       ; [CPU_ARAU] |156| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 152,column 3,is_stmt,isa 0
        MOVL      XAR0,*-SP[16]         ; [CPU_ALU] |152| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 157,column 3,is_stmt,isa 0
        MOVL      XAR2,#_DataGet        ; [CPU_ARAU] |157| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 126,column 2,is_stmt,isa 0
        MOVL      @_dataOut32,XAR6      ; [CPU_ALU] |126| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 136,column 2,is_stmt,isa 0
        MOVL      @_MemGetAddress,XAR6  ; [CPU_ALU] |136| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 153,column 3,is_stmt,isa 0
        MOVL      *+XAR5[4],XAR0        ; [CPU_ALU] |153| 
        MOVW      DP,#_SciaRegs+15      ; [CPU_ARAU] 
        MOVL      XAR0,*-SP[18]         ; [CPU_ALU] |153| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 158,column 3,is_stmt,isa 0
        MOVL      XAR7,#_DataSet32      ; [CPU_ARAU] |158| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 136,column 2,is_stmt,isa 0
        MOVL      *-SP[10],P            ; [CPU_ALU] |136| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 145,column 3,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |145| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 154,column 3,is_stmt,isa 0
        MOVL      *+XAR5[6],XAR0        ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 155,column 3,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |155| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 118,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(_SciaRegs)+15,AL ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 155,column 3,is_stmt,isa 0
        MOVL      *+XAR5[AR0],XT        ; [CPU_ALU] |155| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 156,column 3,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |156| 
        MOVL      *+XAR5[AR0],XAR3      ; [CPU_ALU] |156| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 157,column 3,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |157| 
        MOVL      *+XAR5[AR0],XAR2      ; [CPU_ALU] |157| 
	.dwpsn	file "../sources/SciCommsGui_32bit.c",line 158,column 3,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |158| 
        MOVL      *+XAR5[AR0],XAR7      ; [CPU_ALU] |158| 
        SUBB      SP,#20                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$80, DW_AT_TI_end_file("../sources/SciCommsGui_32bit.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0xa1)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_varSetTxtList
	.global	_varSetBtnList
	.global	_varSetSldrList
	.global	_varGetList
	.global	_arrayGetList
	.global	_dataSetList
	.global	_CommsOKflg
	.global	_SerialCommsTimer
	.global	_SciaRegs
	.global	_GpioDataRegs
	.global	L$$DIV

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("GPIO0")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_GPIO0")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("GPIO1")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_GPIO1")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("GPIO2")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_GPIO2")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("GPIO3")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_GPIO3")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("GPIO4")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_GPIO4")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("GPIO5")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_GPIO5")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("GPIO6")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_GPIO6")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("GPIO7")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_GPIO7")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("GPIO8")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_GPIO8")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("GPIO9")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_GPIO9")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("GPIO10")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_GPIO10")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_name("GPIO11")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_GPIO11")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("GPIO12")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_GPIO12")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("GPIO13")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_GPIO13")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("GPIO14")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_GPIO14")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("GPIO15")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_GPIO15")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("GPIO16")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_GPIO16")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("GPIO17")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_GPIO17")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("GPIO18")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_GPIO18")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("GPIO19")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_GPIO19")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("GPIO20")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_GPIO20")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("GPIO21")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_GPIO21")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("GPIO22")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_GPIO22")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("GPIO23")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_GPIO23")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("GPIO24")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_GPIO24")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("GPIO25")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_GPIO25")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("GPIO26")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_GPIO26")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("GPIO27")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_GPIO27")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("GPIO28")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_GPIO28")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("GPIO29")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_GPIO29")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("GPIO30")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_GPIO30")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("GPIO31")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_GPIO31")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$119, DW_AT_name("all")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("bit")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("GPIO0")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_GPIO0")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("GPIO1")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_GPIO1")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("GPIO2")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_GPIO2")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("GPIO3")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_GPIO3")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("GPIO4")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_GPIO4")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("GPIO5")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_GPIO5")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("GPIO6")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_GPIO6")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("GPIO7")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_GPIO7")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("GPIO8")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_GPIO8")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("GPIO9")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_GPIO9")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("GPIO10")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_GPIO10")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("GPIO11")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_GPIO11")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("GPIO12")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_GPIO12")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("GPIO13")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_GPIO13")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("GPIO14")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_GPIO14")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("GPIO15")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_GPIO15")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("GPIO16")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_GPIO16")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("GPIO17")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_GPIO17")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("GPIO18")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_GPIO18")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("GPIO19")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_GPIO19")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("GPIO20")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_GPIO20")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("GPIO21")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_GPIO21")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("GPIO22")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_GPIO22")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("GPIO23")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_GPIO23")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("GPIO24")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_GPIO24")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("GPIO25")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_GPIO25")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("GPIO26")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_GPIO26")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("GPIO27")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_GPIO27")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("GPIO28")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_GPIO28")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("GPIO29")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_GPIO29")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("GPIO30")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_GPIO30")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("GPIO31")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_GPIO31")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$153, DW_AT_name("all")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$154, DW_AT_name("bit")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("GPIO0")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_GPIO0")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("GPIO1")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_GPIO1")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("GPIO2")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_GPIO2")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("GPIO3")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_GPIO3")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("GPIO4")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_GPIO4")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("GPIO5")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_GPIO5")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("GPIO6")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_GPIO6")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("GPIO7")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_GPIO7")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("GPIO8")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_GPIO8")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("GPIO9")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_GPIO9")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("GPIO10")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_GPIO10")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("GPIO11")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_GPIO11")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("GPIO12")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_GPIO12")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("GPIO13")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_GPIO13")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("GPIO14")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_GPIO14")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("GPIO15")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_GPIO15")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("GPIO16")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_GPIO16")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("GPIO17")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_GPIO17")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("GPIO18")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_GPIO18")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("GPIO19")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_GPIO19")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("GPIO20")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_GPIO20")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("GPIO21")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_GPIO21")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("GPIO22")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_GPIO22")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("GPIO23")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_GPIO23")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("GPIO24")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_GPIO24")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("GPIO25")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_GPIO25")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("GPIO26")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_GPIO26")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("GPIO27")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_GPIO27")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("GPIO28")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_GPIO28")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("GPIO29")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_GPIO29")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("GPIO30")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_GPIO30")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("GPIO31")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_GPIO31")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x02)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$187, DW_AT_name("all")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$188, DW_AT_name("bit")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("GPIO0")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_GPIO0")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("GPIO1")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_GPIO1")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("GPIO2")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_GPIO2")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("GPIO3")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_GPIO3")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("GPIO4")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_GPIO4")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("GPIO5")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_GPIO5")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("GPIO6")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_GPIO6")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("GPIO7")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_GPIO7")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("GPIO8")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_GPIO8")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("GPIO9")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_GPIO9")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("GPIO10")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_GPIO10")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("GPIO11")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_GPIO11")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("GPIO12")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_GPIO12")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("GPIO13")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_GPIO13")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("GPIO14")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_GPIO14")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("GPIO15")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_GPIO15")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("GPIO16")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_GPIO16")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("GPIO17")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_GPIO17")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("GPIO18")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_GPIO18")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("GPIO19")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_GPIO19")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("GPIO20")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_GPIO20")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("GPIO21")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_GPIO21")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("GPIO22")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_GPIO22")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("GPIO23")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_GPIO23")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("GPIO24")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_GPIO24")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("GPIO25")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_GPIO25")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("GPIO26")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_GPIO26")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("GPIO27")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_GPIO27")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("GPIO28")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_GPIO28")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("GPIO29")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_GPIO29")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("GPIO30")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_GPIO30")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("GPIO31")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_GPIO31")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$221, DW_AT_name("all")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$222, DW_AT_name("bit")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("GPIO32")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_GPIO32")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("GPIO33")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_GPIO33")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("GPIO34")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_GPIO34")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("GPIO35")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_GPIO35")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("GPIO36")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_GPIO36")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("GPIO37")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_GPIO37")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("GPIO38")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_GPIO38")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("GPIO39")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_GPIO39")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("GPIO40")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_GPIO40")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("GPIO41")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_GPIO41")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("GPIO42")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_GPIO42")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("GPIO43")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_GPIO43")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("GPIO44")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_GPIO44")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("GPIO45")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_GPIO45")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("GPIO46")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_GPIO46")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("GPIO47")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_GPIO47")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("GPIO48")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_GPIO48")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("GPIO49")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_GPIO49")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("GPIO50")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_GPIO50")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("GPIO51")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_GPIO51")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("GPIO52")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_GPIO52")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("GPIO53")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_GPIO53")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("GPIO54")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_GPIO54")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("GPIO55")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_GPIO55")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("GPIO56")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_GPIO56")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("GPIO57")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_GPIO57")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("GPIO58")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_GPIO58")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("GPIO59")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_GPIO59")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIO60")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_GPIO60")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("GPIO61")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_GPIO61")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("GPIO62")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_GPIO62")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("GPIO63")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_GPIO63")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$255, DW_AT_name("all")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$256, DW_AT_name("bit")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("GPIO32")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_GPIO32")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("GPIO33")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_GPIO33")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("GPIO34")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_GPIO34")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("GPIO35")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_GPIO35")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("GPIO36")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_GPIO36")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIO37")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_GPIO37")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIO38")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_GPIO38")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("GPIO39")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_GPIO39")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("GPIO40")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_GPIO40")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("GPIO41")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_GPIO41")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("GPIO42")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_GPIO42")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("GPIO43")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_GPIO43")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("GPIO44")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_GPIO44")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("GPIO45")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_GPIO45")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("GPIO46")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_GPIO46")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("GPIO47")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_GPIO47")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("GPIO48")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_GPIO48")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("GPIO49")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_GPIO49")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("GPIO50")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_GPIO50")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("GPIO51")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_GPIO51")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("GPIO52")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_GPIO52")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("GPIO53")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_GPIO53")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIO54")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_GPIO54")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("GPIO55")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_GPIO55")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("GPIO56")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_GPIO56")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIO57")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_GPIO57")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("GPIO58")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_GPIO58")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("GPIO59")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_GPIO59")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("GPIO60")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_GPIO60")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIO61")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_GPIO61")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIO62")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIO62")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIO63")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_GPIO63")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$289, DW_AT_name("all")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$290, DW_AT_name("bit")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIO32")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_GPIO32")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("GPIO33")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_GPIO33")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("GPIO34")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_GPIO34")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("GPIO35")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_GPIO35")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIO36")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_GPIO36")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("GPIO37")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_GPIO37")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIO38")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIO38")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("GPIO39")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_GPIO39")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("GPIO40")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_GPIO40")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("GPIO41")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_GPIO41")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("GPIO42")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_GPIO42")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIO43")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_GPIO43")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIO44")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIO44")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("GPIO45")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_GPIO45")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIO46")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_GPIO46")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIO47")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_GPIO47")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIO48")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_GPIO48")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIO49")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_GPIO49")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIO50")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_GPIO50")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIO51")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_GPIO51")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIO52")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_GPIO52")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIO53")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_GPIO53")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("GPIO54")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_GPIO54")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("GPIO55")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_GPIO55")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("GPIO56")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_GPIO56")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("GPIO57")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_GPIO57")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("GPIO58")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_GPIO58")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("GPIO59")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_GPIO59")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("GPIO60")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_GPIO60")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("GPIO61")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_GPIO61")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIO62")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_GPIO62")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIO63")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIO63")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$323, DW_AT_name("all")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$324, DW_AT_name("bit")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIO32")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIO32")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIO33")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIO33")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("GPIO34")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIO34")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIO35")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIO35")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIO36")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIO36")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIO37")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIO37")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIO38")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIO38")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("GPIO39")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_GPIO39")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("GPIO40")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_GPIO40")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIO41")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIO41")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIO42")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIO42")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("GPIO43")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_GPIO43")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("GPIO44")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_GPIO44")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIO45")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIO45")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIO46")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIO46")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIO47")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIO47")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIO48")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIO48")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIO49")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIO49")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIO50")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIO50")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIO51")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIO51")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIO52")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIO52")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIO53")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIO53")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIO54")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIO54")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIO55")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIO55")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIO56")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIO56")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIO57")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIO57")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("GPIO58")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_GPIO58")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIO59")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIO59")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIO60")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIO60")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIO61")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIO61")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("GPIO62")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_GPIO62")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("GPIO63")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_GPIO63")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_name("all")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$358, DW_AT_name("bit")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("GPCCLEAR_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIO64")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIO64")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIO65")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIO65")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIO66")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIO66")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIO67")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIO67")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIO68")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIO68")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIO69")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIO69")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIO70")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIO70")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIO71")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIO71")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIO72")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIO72")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIO73")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIO73")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("GPIO74")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPIO74")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIO75")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIO75")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIO76")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIO76")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIO77")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIO77")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("GPIO78")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_GPIO78")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("GPIO79")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPIO79")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIO80")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIO80")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIO81")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIO81")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIO82")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIO82")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIO83")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIO83")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIO84")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIO84")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIO85")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIO85")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIO86")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIO86")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIO87")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIO87")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIO88")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIO88")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIO89")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIO89")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIO90")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIO90")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIO91")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIO91")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("GPIO92")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_GPIO92")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIO93")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIO93")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIO94")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIO94")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIO95")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIO95")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("GPCCLEAR_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$391, DW_AT_name("all")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$392, DW_AT_name("bit")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("GPCDAT_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIO64")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIO64")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIO65")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIO65")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("GPIO66")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_GPIO66")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIO67")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIO67")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIO68")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIO68")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIO69")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIO69")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIO70")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIO70")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIO71")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIO71")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIO72")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIO72")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIO73")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIO73")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIO74")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIO74")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIO75")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIO75")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIO76")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIO76")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("GPIO77")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_GPIO77")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIO78")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIO78")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIO79")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIO79")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("GPIO80")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_GPIO80")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("GPIO81")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GPIO81")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("GPIO82")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GPIO82")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIO83")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIO83")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIO84")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIO84")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIO85")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIO85")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIO86")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIO86")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIO87")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIO87")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIO88")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIO88")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIO89")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIO89")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIO90")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIO90")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIO91")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIO91")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIO92")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIO92")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIO93")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIO93")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("GPIO94")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_GPIO94")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("GPIO95")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_GPIO95")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("GPCDAT_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$425, DW_AT_name("all")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$426, DW_AT_name("bit")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("GPCSET_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("GPIO64")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_GPIO64")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("GPIO65")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_GPIO65")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("GPIO66")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_GPIO66")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("GPIO67")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIO67")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIO68")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPIO68")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIO69")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPIO69")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIO70")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIO70")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIO71")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIO71")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIO72")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIO72")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("GPIO73")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPIO73")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIO74")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIO74")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIO75")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIO75")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIO76")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIO76")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("GPIO77")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPIO77")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("GPIO78")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_GPIO78")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("GPIO79")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPIO79")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIO80")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIO80")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("GPIO81")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPIO81")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("GPIO82")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIO82")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("GPIO83")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_GPIO83")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("GPIO84")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_GPIO84")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("GPIO85")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_GPIO85")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("GPIO86")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_GPIO86")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIO87")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIO87")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIO88")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIO88")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("GPIO89")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPIO89")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIO90")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIO90")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIO91")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIO91")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("GPIO92")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPIO92")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIO93")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIO93")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIO94")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIO94")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIO95")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIO95")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("GPCSET_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$459, DW_AT_name("all")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$460, DW_AT_name("bit")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("GPCTOGGLE_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("GPIO64")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_GPIO64")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("GPIO65")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_GPIO65")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("GPIO66")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_GPIO66")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("GPIO67")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_GPIO67")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("GPIO68")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_GPIO68")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("GPIO69")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_GPIO69")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("GPIO70")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_GPIO70")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIO71")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_GPIO71")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("GPIO72")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_GPIO72")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("GPIO73")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_GPIO73")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("GPIO74")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_GPIO74")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("GPIO75")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_GPIO75")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("GPIO76")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_GPIO76")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("GPIO77")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_GPIO77")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("GPIO78")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_GPIO78")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("GPIO79")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_GPIO79")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("GPIO80")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_GPIO80")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("GPIO81")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_GPIO81")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("GPIO82")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_GPIO82")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("GPIO83")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPIO83")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("GPIO84")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_GPIO84")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("GPIO85")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_GPIO85")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("GPIO86")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_GPIO86")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("GPIO87")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_GPIO87")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("GPIO88")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_GPIO88")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("GPIO89")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPIO89")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("GPIO90")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_GPIO90")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("GPIO91")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_GPIO91")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("GPIO92")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_GPIO92")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("GPIO93")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_GPIO93")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("GPIO94")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPIO94")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("GPIO95")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPIO95")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("GPCTOGGLE_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$493, DW_AT_name("all")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$494, DW_AT_name("bit")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("GPIO96")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_GPIO96")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("GPIO97")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPIO97")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("GPIO98")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPIO98")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("GPIO99")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_GPIO99")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("GPIO100")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_GPIO100")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("GPIO101")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_GPIO101")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("GPIO102")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_GPIO102")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("GPIO103")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPIO103")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("GPIO104")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPIO104")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("GPIO105")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_GPIO105")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("GPIO106")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_GPIO106")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("GPIO107")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_GPIO107")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("GPIO108")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPIO108")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("GPIO109")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPIO109")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("GPIO110")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_GPIO110")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("GPIO111")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPIO111")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("GPIO112")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_GPIO112")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("GPIO113")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_GPIO113")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("GPIO114")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_GPIO114")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("GPIO115")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPIO115")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("GPIO116")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPIO116")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("GPIO117")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_GPIO117")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("GPIO118")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_GPIO118")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("GPIO119")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_GPIO119")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("GPIO120")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_GPIO120")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("GPIO121")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_GPIO121")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("GPIO122")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_GPIO122")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("GPIO123")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_GPIO123")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("GPIO124")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_GPIO124")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("GPIO125")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_GPIO125")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("GPIO126")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_GPIO126")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("GPIO127")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_GPIO127")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$527, DW_AT_name("all")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$528, DW_AT_name("bit")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("GPIO96")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_GPIO96")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("GPIO97")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_GPIO97")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("GPIO98")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_GPIO98")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("GPIO99")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_GPIO99")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("GPIO100")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_GPIO100")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("GPIO101")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_GPIO101")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("GPIO102")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_GPIO102")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("GPIO103")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_GPIO103")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("GPIO104")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_GPIO104")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("GPIO105")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_GPIO105")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("GPIO106")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_GPIO106")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("GPIO107")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_GPIO107")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("GPIO108")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_GPIO108")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("GPIO109")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_GPIO109")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("GPIO110")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_GPIO110")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("GPIO111")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_GPIO111")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("GPIO112")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_GPIO112")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("GPIO113")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_GPIO113")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("GPIO114")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_GPIO114")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("GPIO115")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_GPIO115")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("GPIO116")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_GPIO116")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("GPIO117")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_GPIO117")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("GPIO118")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GPIO118")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("GPIO119")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_GPIO119")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("GPIO120")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_GPIO120")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("GPIO121")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_GPIO121")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("GPIO122")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_GPIO122")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("GPIO123")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_GPIO123")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("GPIO124")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_GPIO124")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("GPIO125")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_GPIO125")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("GPIO126")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_GPIO126")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("GPIO127")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_GPIO127")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$561, DW_AT_name("all")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$562, DW_AT_name("bit")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("GPIO96")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_GPIO96")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("GPIO97")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GPIO97")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("GPIO98")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GPIO98")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("GPIO99")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_GPIO99")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("GPIO100")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GPIO100")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("GPIO101")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GPIO101")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("GPIO102")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_GPIO102")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("GPIO103")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_GPIO103")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("GPIO104")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_GPIO104")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("GPIO105")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_GPIO105")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("GPIO106")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_GPIO106")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("GPIO107")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_GPIO107")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("GPIO108")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_GPIO108")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("GPIO109")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_GPIO109")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("GPIO110")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_GPIO110")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("GPIO111")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_GPIO111")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("GPIO112")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_GPIO112")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("GPIO113")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_GPIO113")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("GPIO114")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_GPIO114")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("GPIO115")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_GPIO115")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("GPIO116")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_GPIO116")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("GPIO117")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_GPIO117")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("GPIO118")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_GPIO118")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("GPIO119")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_GPIO119")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("GPIO120")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_GPIO120")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("GPIO121")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_GPIO121")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("GPIO122")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_GPIO122")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("GPIO123")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_GPIO123")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("GPIO124")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_GPIO124")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("GPIO125")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_GPIO125")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("GPIO126")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPIO126")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("GPIO127")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPIO127")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$595, DW_AT_name("all")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$596, DW_AT_name("bit")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("GPIO96")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_GPIO96")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("GPIO97")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_GPIO97")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("GPIO98")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPIO98")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("GPIO99")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_GPIO99")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("GPIO100")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_GPIO100")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("GPIO101")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_GPIO101")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("GPIO102")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_GPIO102")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("GPIO103")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_GPIO103")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("GPIO104")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_GPIO104")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("GPIO105")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_GPIO105")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("GPIO106")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_GPIO106")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("GPIO107")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_GPIO107")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("GPIO108")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_GPIO108")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("GPIO109")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_GPIO109")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("GPIO110")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_GPIO110")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GPIO111")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_GPIO111")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("GPIO112")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_GPIO112")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("GPIO113")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_GPIO113")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("GPIO114")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_GPIO114")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("GPIO115")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_GPIO115")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("GPIO116")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_GPIO116")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("GPIO117")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_GPIO117")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("GPIO118")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_GPIO118")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("GPIO119")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_GPIO119")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("GPIO120")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_GPIO120")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("GPIO121")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_GPIO121")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("GPIO122")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_GPIO122")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("GPIO123")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_GPIO123")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("GPIO124")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_GPIO124")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("GPIO125")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_GPIO125")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("GPIO126")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_GPIO126")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("GPIO127")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_GPIO127")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$629, DW_AT_name("all")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$630, DW_AT_name("bit")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("GPIO128")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_GPIO128")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("GPIO129")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_GPIO129")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("GPIO130")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_GPIO130")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("GPIO131")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_GPIO131")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("GPIO132")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_GPIO132")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("GPIO133")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_GPIO133")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("GPIO134")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_GPIO134")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("GPIO135")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_GPIO135")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("GPIO136")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_GPIO136")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("GPIO137")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_GPIO137")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("GPIO138")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_GPIO138")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("GPIO139")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_GPIO139")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("GPIO140")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_GPIO140")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("GPIO141")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_GPIO141")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("GPIO142")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_GPIO142")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("GPIO143")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_GPIO143")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("GPIO144")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_GPIO144")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("GPIO145")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_GPIO145")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("GPIO146")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_GPIO146")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("GPIO147")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_GPIO147")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("GPIO148")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_GPIO148")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("GPIO149")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_GPIO149")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("GPIO150")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_GPIO150")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("GPIO151")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_GPIO151")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("GPIO152")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_GPIO152")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("GPIO153")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_GPIO153")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("GPIO154")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_GPIO154")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("GPIO155")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_GPIO155")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("GPIO156")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_GPIO156")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("GPIO157")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_GPIO157")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("GPIO158")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_GPIO158")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("GPIO159")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_GPIO159")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$663, DW_AT_name("all")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$664, DW_AT_name("bit")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("GPIO128")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_GPIO128")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("GPIO129")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_GPIO129")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("GPIO130")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_GPIO130")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("GPIO131")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_GPIO131")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("GPIO132")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_GPIO132")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_name("GPIO133")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_GPIO133")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("GPIO134")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_GPIO134")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$672, DW_AT_name("GPIO135")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_GPIO135")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("GPIO136")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_GPIO136")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("GPIO137")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_GPIO137")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("GPIO138")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_GPIO138")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("GPIO139")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_GPIO139")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("GPIO140")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_GPIO140")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_name("GPIO141")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_GPIO141")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("GPIO142")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_GPIO142")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("GPIO143")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_GPIO143")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$681, DW_AT_name("GPIO144")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_GPIO144")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("GPIO145")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_GPIO145")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$683, DW_AT_name("GPIO146")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_GPIO146")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$684, DW_AT_name("GPIO147")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_GPIO147")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$685, DW_AT_name("GPIO148")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_GPIO148")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("GPIO149")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_GPIO149")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("GPIO150")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_GPIO150")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$688, DW_AT_name("GPIO151")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_GPIO151")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("GPIO152")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_GPIO152")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("GPIO153")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_GPIO153")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("GPIO154")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_GPIO154")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$692, DW_AT_name("GPIO155")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_GPIO155")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("GPIO156")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_GPIO156")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("GPIO157")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_GPIO157")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("GPIO158")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_GPIO158")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("GPIO159")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_GPIO159")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$697, DW_AT_name("all")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$698, DW_AT_name("bit")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("GPIO128")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_GPIO128")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("GPIO129")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_GPIO129")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("GPIO130")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_GPIO130")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$702, DW_AT_name("GPIO131")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_GPIO131")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("GPIO132")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_GPIO132")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("GPIO133")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_GPIO133")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("GPIO134")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_GPIO134")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("GPIO135")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_GPIO135")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("GPIO136")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_GPIO136")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("GPIO137")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_GPIO137")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("GPIO138")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_GPIO138")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("GPIO139")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_GPIO139")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("GPIO140")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_GPIO140")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("GPIO141")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_GPIO141")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("GPIO142")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_GPIO142")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("GPIO143")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_GPIO143")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("GPIO144")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_GPIO144")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("GPIO145")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_GPIO145")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("GPIO146")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_GPIO146")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("GPIO147")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_GPIO147")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("GPIO148")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_GPIO148")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("GPIO149")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_GPIO149")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("GPIO150")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_GPIO150")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("GPIO151")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_GPIO151")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("GPIO152")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_GPIO152")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("GPIO153")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_GPIO153")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("GPIO154")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_GPIO154")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("GPIO155")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_GPIO155")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("GPIO156")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_GPIO156")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("GPIO157")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_GPIO157")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("GPIO158")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_GPIO158")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("GPIO159")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_GPIO159")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$731, DW_AT_name("all")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$732, DW_AT_name("bit")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("GPIO128")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_GPIO128")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("GPIO129")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_GPIO129")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("GPIO130")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_GPIO130")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("GPIO131")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_GPIO131")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("GPIO132")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_GPIO132")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("GPIO133")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_GPIO133")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("GPIO134")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_GPIO134")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("GPIO135")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_GPIO135")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("GPIO136")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_GPIO136")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("GPIO137")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_GPIO137")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("GPIO138")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_GPIO138")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("GPIO139")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_GPIO139")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("GPIO140")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_GPIO140")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("GPIO141")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_GPIO141")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("GPIO142")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_GPIO142")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("GPIO143")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_GPIO143")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("GPIO144")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_GPIO144")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("GPIO145")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_GPIO145")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$751, DW_AT_name("GPIO146")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_GPIO146")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$751, DW_AT_bit_size(0x01)
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("GPIO147")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_GPIO147")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("GPIO148")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_GPIO148")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("GPIO149")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_GPIO149")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("GPIO150")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_GPIO150")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("GPIO151")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_GPIO151")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("GPIO152")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_GPIO152")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("GPIO153")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_GPIO153")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("GPIO154")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_GPIO154")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("GPIO155")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_GPIO155")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("GPIO156")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_GPIO156")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("GPIO157")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_GPIO157")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("GPIO158")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_GPIO158")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("GPIO159")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_GPIO159")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$765, DW_AT_name("all")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$766, DW_AT_name("bit")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("GPIO160")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_GPIO160")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$767, DW_AT_bit_size(0x01)
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("GPIO161")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_GPIO161")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$769, DW_AT_name("GPIO162")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_GPIO162")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$770, DW_AT_name("GPIO163")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_GPIO163")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("GPIO164")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_GPIO164")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("GPIO165")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_GPIO165")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$773, DW_AT_name("GPIO166")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_GPIO166")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("GPIO167")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_GPIO167")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("GPIO168")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_GPIO168")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("rsvd1")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("rsvd2")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("rsvd3")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("rsvd4")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("rsvd5")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("rsvd6")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("rsvd7")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$782, DW_AT_bit_size(0x01)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$783, DW_AT_name("rsvd8")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_name("rsvd9")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$784, DW_AT_bit_size(0x01)
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("rsvd10")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("rsvd11")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("rsvd12")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$788, DW_AT_name("rsvd13")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("rsvd14")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("rsvd15")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("rsvd16")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("rsvd17")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_rsvd17")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("rsvd18")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_rsvd18")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("rsvd19")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_rsvd19")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("rsvd20")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_rsvd20")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("rsvd21")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_rsvd21")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("rsvd22")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_rsvd22")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("rsvd23")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_rsvd23")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$799, DW_AT_name("all")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$800, DW_AT_name("bit")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("GPIO160")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_GPIO160")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("GPIO161")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_GPIO161")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$802, DW_AT_bit_size(0x01)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("GPIO162")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_GPIO162")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$803, DW_AT_bit_size(0x01)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("GPIO163")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_GPIO163")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$804, DW_AT_bit_size(0x01)
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("GPIO164")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_GPIO164")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$805, DW_AT_bit_size(0x01)
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("GPIO165")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_GPIO165")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("GPIO166")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_GPIO166")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("GPIO167")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_GPIO167")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("GPIO168")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_GPIO168")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$809, DW_AT_bit_size(0x01)
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("rsvd1")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("rsvd2")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("rsvd3")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("rsvd4")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("rsvd5")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("rsvd6")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("rsvd7")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("rsvd8")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("rsvd9")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$818, DW_AT_bit_size(0x01)
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("rsvd10")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("rsvd11")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$820, DW_AT_bit_size(0x01)
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("rsvd12")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$821, DW_AT_bit_size(0x01)
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("rsvd13")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("rsvd14")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("rsvd15")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("rsvd16")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("rsvd17")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_rsvd17")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$826, DW_AT_bit_size(0x01)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$827, DW_AT_name("rsvd18")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_rsvd18")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$827, DW_AT_bit_size(0x01)
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("rsvd19")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_rsvd19")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("rsvd20")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_rsvd20")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("rsvd21")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_rsvd21")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("rsvd22")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_rsvd22")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$831, DW_AT_bit_size(0x01)
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("rsvd23")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_rsvd23")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$832, DW_AT_bit_size(0x01)
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$833, DW_AT_name("all")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$834, DW_AT_name("bit")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("GPIO160")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_GPIO160")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("GPIO161")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_GPIO161")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("GPIO162")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_GPIO162")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$837, DW_AT_bit_size(0x01)
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("GPIO163")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_GPIO163")
	.dwattr $C$DW$838, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$838, DW_AT_bit_size(0x01)
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("GPIO164")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_GPIO164")
	.dwattr $C$DW$839, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$839, DW_AT_bit_size(0x01)
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("GPIO165")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_GPIO165")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("GPIO166")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_GPIO166")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$841, DW_AT_bit_size(0x01)
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("GPIO167")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_GPIO167")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$842, DW_AT_bit_size(0x01)
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("GPIO168")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_GPIO168")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("rsvd1")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$844, DW_AT_bit_size(0x01)
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("rsvd2")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$845, DW_AT_bit_size(0x01)
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("rsvd3")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("rsvd4")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("rsvd5")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("rsvd6")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$849, DW_AT_bit_size(0x01)
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("rsvd7")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("rsvd8")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("rsvd9")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("rsvd10")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("rsvd11")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("rsvd12")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("rsvd13")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$856, DW_AT_bit_size(0x01)
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("rsvd14")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("rsvd15")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("rsvd16")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("rsvd17")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_rsvd17")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("rsvd18")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_rsvd18")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$861, DW_AT_bit_size(0x01)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("rsvd19")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_rsvd19")
	.dwattr $C$DW$862, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$862, DW_AT_bit_size(0x01)
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$863, DW_AT_name("rsvd20")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_rsvd20")
	.dwattr $C$DW$863, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$863, DW_AT_bit_size(0x01)
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("rsvd21")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_rsvd21")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$864, DW_AT_bit_size(0x01)
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("rsvd22")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_rsvd22")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("rsvd23")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_rsvd23")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$866, DW_AT_bit_size(0x01)
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$867, DW_AT_name("all")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$868, DW_AT_name("bit")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_name("GPIO160")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_GPIO160")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$869, DW_AT_bit_size(0x01)
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_name("GPIO161")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_GPIO161")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$870, DW_AT_bit_size(0x01)
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$871, DW_AT_name("GPIO162")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_GPIO162")
	.dwattr $C$DW$871, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$871, DW_AT_bit_size(0x01)
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$872, DW_AT_name("GPIO163")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_GPIO163")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$872, DW_AT_bit_size(0x01)
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("GPIO164")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_GPIO164")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$873, DW_AT_bit_size(0x01)
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$874, DW_AT_name("GPIO165")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_GPIO165")
	.dwattr $C$DW$874, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$874, DW_AT_bit_size(0x01)
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$875, DW_AT_name("GPIO166")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_GPIO166")
	.dwattr $C$DW$875, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$875, DW_AT_bit_size(0x01)
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$876, DW_AT_name("GPIO167")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_GPIO167")
	.dwattr $C$DW$876, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$876, DW_AT_bit_size(0x01)
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$877, DW_AT_name("GPIO168")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_GPIO168")
	.dwattr $C$DW$877, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$877, DW_AT_bit_size(0x01)
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$878, DW_AT_name("rsvd1")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$878, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$878, DW_AT_bit_size(0x01)
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$879, DW_AT_name("rsvd2")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$879, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$879, DW_AT_bit_size(0x01)
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$880, DW_AT_name("rsvd3")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$880, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$880, DW_AT_bit_size(0x01)
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_name("rsvd4")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$881, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$881, DW_AT_bit_size(0x01)
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$882, DW_AT_name("rsvd5")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$882, DW_AT_bit_size(0x01)
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$883, DW_AT_name("rsvd6")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$883, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$883, DW_AT_bit_size(0x01)
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$884, DW_AT_name("rsvd7")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$884, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$884, DW_AT_bit_size(0x01)
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$885, DW_AT_name("rsvd8")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$885, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$885, DW_AT_bit_size(0x01)
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$886, DW_AT_name("rsvd9")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$886, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$886, DW_AT_bit_size(0x01)
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$887, DW_AT_name("rsvd10")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$887, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$887, DW_AT_bit_size(0x01)
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$888, DW_AT_name("rsvd11")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$888, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$888, DW_AT_bit_size(0x01)
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$889, DW_AT_name("rsvd12")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$889, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$889, DW_AT_bit_size(0x01)
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$890, DW_AT_name("rsvd13")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$890, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$890, DW_AT_bit_size(0x01)
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$891, DW_AT_name("rsvd14")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$891, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$891, DW_AT_bit_size(0x01)
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$892, DW_AT_name("rsvd15")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$892, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$892, DW_AT_bit_size(0x01)
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$893, DW_AT_name("rsvd16")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$893, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$893, DW_AT_bit_size(0x01)
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$894, DW_AT_name("rsvd17")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_rsvd17")
	.dwattr $C$DW$894, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$894, DW_AT_bit_size(0x01)
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$895, DW_AT_name("rsvd18")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_rsvd18")
	.dwattr $C$DW$895, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$895, DW_AT_bit_size(0x01)
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$896, DW_AT_name("rsvd19")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_rsvd19")
	.dwattr $C$DW$896, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$896, DW_AT_bit_size(0x01)
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$897, DW_AT_name("rsvd20")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_rsvd20")
	.dwattr $C$DW$897, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$897, DW_AT_bit_size(0x01)
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$898, DW_AT_name("rsvd21")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_rsvd21")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$898, DW_AT_bit_size(0x01)
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$899, DW_AT_name("rsvd22")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_rsvd22")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$899, DW_AT_bit_size(0x01)
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$900, DW_AT_name("rsvd23")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_rsvd23")
	.dwattr $C$DW$900, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$900, DW_AT_bit_size(0x01)
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$901, DW_AT_name("all")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$902, DW_AT_name("bit")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x30)
$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$903, DW_AT_name("GPADAT")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$904, DW_AT_name("GPASET")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$905, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$906, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$907, DW_AT_name("GPBDAT")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$908, DW_AT_name("GPBSET")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$909, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$910, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$911, DW_AT_name("GPCDAT")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_GPCDAT")
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$912, DW_AT_name("GPCSET")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_GPCSET")
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$913, DW_AT_name("GPCCLEAR")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_GPCCLEAR")
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$914, DW_AT_name("GPCTOGGLE")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_GPCTOGGLE")
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$915, DW_AT_name("GPDDAT")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$916, DW_AT_name("GPDSET")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$917, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$917, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$918, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$918, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$919, DW_AT_name("GPEDAT")
	.dwattr $C$DW$919, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$920, DW_AT_name("GPESET")
	.dwattr $C$DW$920, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$921, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$921, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$922, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$922, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$923, DW_AT_name("GPFDAT")
	.dwattr $C$DW$923, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$924, DW_AT_name("GPFSET")
	.dwattr $C$DW$924, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$925, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$925, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$926, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$926, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$927	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$69)

$C$DW$T$104	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$927)


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("SCICCR_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$928, DW_AT_name("SCICHAR")
	.dwattr $C$DW$928, DW_AT_TI_symbol_name("_SCICHAR")
	.dwattr $C$DW$928, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$928, DW_AT_bit_size(0x03)
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$929, DW_AT_name("ADDRIDLE_MODE")
	.dwattr $C$DW$929, DW_AT_TI_symbol_name("_ADDRIDLE_MODE")
	.dwattr $C$DW$929, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$929, DW_AT_bit_size(0x01)
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$930, DW_AT_name("LOOPBKENA")
	.dwattr $C$DW$930, DW_AT_TI_symbol_name("_LOOPBKENA")
	.dwattr $C$DW$930, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$930, DW_AT_bit_size(0x01)
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$931, DW_AT_name("PARITYENA")
	.dwattr $C$DW$931, DW_AT_TI_symbol_name("_PARITYENA")
	.dwattr $C$DW$931, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$931, DW_AT_bit_size(0x01)
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$932, DW_AT_name("PARITY")
	.dwattr $C$DW$932, DW_AT_TI_symbol_name("_PARITY")
	.dwattr $C$DW$932, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$932, DW_AT_bit_size(0x01)
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$933, DW_AT_name("STOPBITS")
	.dwattr $C$DW$933, DW_AT_TI_symbol_name("_STOPBITS")
	.dwattr $C$DW$933, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$933, DW_AT_bit_size(0x01)
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$934, DW_AT_name("rsvd1")
	.dwattr $C$DW$934, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$934, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$934, DW_AT_bit_size(0x08)
	.dwattr $C$DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("SCICCR_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$935, DW_AT_name("all")
	.dwattr $C$DW$935, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$936, DW_AT_name("bit")
	.dwattr $C$DW$936, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("SCICTL1_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$937, DW_AT_name("RXENA")
	.dwattr $C$DW$937, DW_AT_TI_symbol_name("_RXENA")
	.dwattr $C$DW$937, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$937, DW_AT_bit_size(0x01)
	.dwattr $C$DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$938, DW_AT_name("TXENA")
	.dwattr $C$DW$938, DW_AT_TI_symbol_name("_TXENA")
	.dwattr $C$DW$938, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$938, DW_AT_bit_size(0x01)
	.dwattr $C$DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$939, DW_AT_name("SLEEP")
	.dwattr $C$DW$939, DW_AT_TI_symbol_name("_SLEEP")
	.dwattr $C$DW$939, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$939, DW_AT_bit_size(0x01)
	.dwattr $C$DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$940, DW_AT_name("TXWAKE")
	.dwattr $C$DW$940, DW_AT_TI_symbol_name("_TXWAKE")
	.dwattr $C$DW$940, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$940, DW_AT_bit_size(0x01)
	.dwattr $C$DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$941, DW_AT_name("rsvd1")
	.dwattr $C$DW$941, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$941, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$941, DW_AT_bit_size(0x01)
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$942, DW_AT_name("SWRESET")
	.dwattr $C$DW$942, DW_AT_TI_symbol_name("_SWRESET")
	.dwattr $C$DW$942, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$942, DW_AT_bit_size(0x01)
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$943, DW_AT_name("RXERRINTENA")
	.dwattr $C$DW$943, DW_AT_TI_symbol_name("_RXERRINTENA")
	.dwattr $C$DW$943, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$943, DW_AT_bit_size(0x01)
	.dwattr $C$DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$944, DW_AT_name("rsvd2")
	.dwattr $C$DW$944, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$944, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$944, DW_AT_bit_size(0x09)
	.dwattr $C$DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("SCICTL1_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$945, DW_AT_name("all")
	.dwattr $C$DW$945, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$946, DW_AT_name("bit")
	.dwattr $C$DW$946, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("SCICTL2_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$947, DW_AT_name("TXINTENA")
	.dwattr $C$DW$947, DW_AT_TI_symbol_name("_TXINTENA")
	.dwattr $C$DW$947, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$947, DW_AT_bit_size(0x01)
	.dwattr $C$DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$948, DW_AT_name("RXBKINTENA")
	.dwattr $C$DW$948, DW_AT_TI_symbol_name("_RXBKINTENA")
	.dwattr $C$DW$948, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$948, DW_AT_bit_size(0x01)
	.dwattr $C$DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$949, DW_AT_name("rsvd1")
	.dwattr $C$DW$949, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$949, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$949, DW_AT_bit_size(0x04)
	.dwattr $C$DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$950, DW_AT_name("TXEMPTY")
	.dwattr $C$DW$950, DW_AT_TI_symbol_name("_TXEMPTY")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$950, DW_AT_bit_size(0x01)
	.dwattr $C$DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$951, DW_AT_name("TXRDY")
	.dwattr $C$DW$951, DW_AT_TI_symbol_name("_TXRDY")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$951, DW_AT_bit_size(0x01)
	.dwattr $C$DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$952, DW_AT_name("rsvd2")
	.dwattr $C$DW$952, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$952, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$952, DW_AT_bit_size(0x08)
	.dwattr $C$DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("SCICTL2_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$953, DW_AT_name("all")
	.dwattr $C$DW$953, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$954, DW_AT_name("bit")
	.dwattr $C$DW$954, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("SCIFFCT_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$955, DW_AT_name("FFTXDLY")
	.dwattr $C$DW$955, DW_AT_TI_symbol_name("_FFTXDLY")
	.dwattr $C$DW$955, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$955, DW_AT_bit_size(0x08)
	.dwattr $C$DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$956, DW_AT_name("rsvd1")
	.dwattr $C$DW$956, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$956, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$956, DW_AT_bit_size(0x05)
	.dwattr $C$DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$957, DW_AT_name("CDC")
	.dwattr $C$DW$957, DW_AT_TI_symbol_name("_CDC")
	.dwattr $C$DW$957, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$957, DW_AT_bit_size(0x01)
	.dwattr $C$DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$958, DW_AT_name("ABDCLR")
	.dwattr $C$DW$958, DW_AT_TI_symbol_name("_ABDCLR")
	.dwattr $C$DW$958, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$958, DW_AT_bit_size(0x01)
	.dwattr $C$DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$959, DW_AT_name("ABD")
	.dwattr $C$DW$959, DW_AT_TI_symbol_name("_ABD")
	.dwattr $C$DW$959, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$959, DW_AT_bit_size(0x01)
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("SCIFFCT_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$960, DW_AT_name("all")
	.dwattr $C$DW$960, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$961, DW_AT_name("bit")
	.dwattr $C$DW$961, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("SCIFFRX_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$962, DW_AT_name("RXFFIL")
	.dwattr $C$DW$962, DW_AT_TI_symbol_name("_RXFFIL")
	.dwattr $C$DW$962, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$962, DW_AT_bit_size(0x05)
	.dwattr $C$DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$963, DW_AT_name("RXFFIENA")
	.dwattr $C$DW$963, DW_AT_TI_symbol_name("_RXFFIENA")
	.dwattr $C$DW$963, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$963, DW_AT_bit_size(0x01)
	.dwattr $C$DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$964, DW_AT_name("RXFFINTCLR")
	.dwattr $C$DW$964, DW_AT_TI_symbol_name("_RXFFINTCLR")
	.dwattr $C$DW$964, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$964, DW_AT_bit_size(0x01)
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$965, DW_AT_name("RXFFINT")
	.dwattr $C$DW$965, DW_AT_TI_symbol_name("_RXFFINT")
	.dwattr $C$DW$965, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$965, DW_AT_bit_size(0x01)
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$966, DW_AT_name("RXFFST")
	.dwattr $C$DW$966, DW_AT_TI_symbol_name("_RXFFST")
	.dwattr $C$DW$966, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$966, DW_AT_bit_size(0x05)
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$967, DW_AT_name("RXFIFORESET")
	.dwattr $C$DW$967, DW_AT_TI_symbol_name("_RXFIFORESET")
	.dwattr $C$DW$967, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$967, DW_AT_bit_size(0x01)
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$968, DW_AT_name("RXFFOVRCLR")
	.dwattr $C$DW$968, DW_AT_TI_symbol_name("_RXFFOVRCLR")
	.dwattr $C$DW$968, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$968, DW_AT_bit_size(0x01)
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$969, DW_AT_name("RXFFOVF")
	.dwattr $C$DW$969, DW_AT_TI_symbol_name("_RXFFOVF")
	.dwattr $C$DW$969, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$969, DW_AT_bit_size(0x01)
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("SCIFFRX_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$970, DW_AT_name("all")
	.dwattr $C$DW$970, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$971, DW_AT_name("bit")
	.dwattr $C$DW$971, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("SCIFFTX_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$972, DW_AT_name("TXFFIL")
	.dwattr $C$DW$972, DW_AT_TI_symbol_name("_TXFFIL")
	.dwattr $C$DW$972, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$972, DW_AT_bit_size(0x05)
	.dwattr $C$DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$973	.dwtag  DW_TAG_member
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$973, DW_AT_name("TXFFIENA")
	.dwattr $C$DW$973, DW_AT_TI_symbol_name("_TXFFIENA")
	.dwattr $C$DW$973, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$973, DW_AT_bit_size(0x01)
	.dwattr $C$DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$973, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$974	.dwtag  DW_TAG_member
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$974, DW_AT_name("TXFFINTCLR")
	.dwattr $C$DW$974, DW_AT_TI_symbol_name("_TXFFINTCLR")
	.dwattr $C$DW$974, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$974, DW_AT_bit_size(0x01)
	.dwattr $C$DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$974, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$975, DW_AT_name("TXFFINT")
	.dwattr $C$DW$975, DW_AT_TI_symbol_name("_TXFFINT")
	.dwattr $C$DW$975, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$975, DW_AT_bit_size(0x01)
	.dwattr $C$DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$976, DW_AT_name("TXFFST")
	.dwattr $C$DW$976, DW_AT_TI_symbol_name("_TXFFST")
	.dwattr $C$DW$976, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$976, DW_AT_bit_size(0x05)
	.dwattr $C$DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$977, DW_AT_name("TXFIFORESET")
	.dwattr $C$DW$977, DW_AT_TI_symbol_name("_TXFIFORESET")
	.dwattr $C$DW$977, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$977, DW_AT_bit_size(0x01)
	.dwattr $C$DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$978, DW_AT_name("SCIFFENA")
	.dwattr $C$DW$978, DW_AT_TI_symbol_name("_SCIFFENA")
	.dwattr $C$DW$978, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$978, DW_AT_bit_size(0x01)
	.dwattr $C$DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$979, DW_AT_name("SCIRST")
	.dwattr $C$DW$979, DW_AT_TI_symbol_name("_SCIRST")
	.dwattr $C$DW$979, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$979, DW_AT_bit_size(0x01)
	.dwattr $C$DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("SCIFFTX_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$980, DW_AT_name("all")
	.dwattr $C$DW$980, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$981, DW_AT_name("bit")
	.dwattr $C$DW$981, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("SCIHBAUD_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$982	.dwtag  DW_TAG_member
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$982, DW_AT_name("BAUD")
	.dwattr $C$DW$982, DW_AT_TI_symbol_name("_BAUD")
	.dwattr $C$DW$982, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$982, DW_AT_bit_size(0x08)
	.dwattr $C$DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$982, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$983, DW_AT_name("rsvd1")
	.dwattr $C$DW$983, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$983, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$983, DW_AT_bit_size(0x08)
	.dwattr $C$DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("SCIHBAUD_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$984, DW_AT_name("all")
	.dwattr $C$DW$984, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$985	.dwtag  DW_TAG_member
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$985, DW_AT_name("bit")
	.dwattr $C$DW$985, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$985, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("SCILBAUD_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$986	.dwtag  DW_TAG_member
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$986, DW_AT_name("BAUD")
	.dwattr $C$DW$986, DW_AT_TI_symbol_name("_BAUD")
	.dwattr $C$DW$986, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$986, DW_AT_bit_size(0x08)
	.dwattr $C$DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$986, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$987, DW_AT_name("rsvd1")
	.dwattr $C$DW$987, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$987, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$987, DW_AT_bit_size(0x08)
	.dwattr $C$DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("SCILBAUD_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$988, DW_AT_name("all")
	.dwattr $C$DW$988, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$989	.dwtag  DW_TAG_member
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$989, DW_AT_name("bit")
	.dwattr $C$DW$989, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$989, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("SCIPRI_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$990	.dwtag  DW_TAG_member
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$990, DW_AT_name("rsvd1")
	.dwattr $C$DW$990, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$990, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$990, DW_AT_bit_size(0x03)
	.dwattr $C$DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$990, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$991	.dwtag  DW_TAG_member
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$991, DW_AT_name("FREESOFT")
	.dwattr $C$DW$991, DW_AT_TI_symbol_name("_FREESOFT")
	.dwattr $C$DW$991, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$991, DW_AT_bit_size(0x02)
	.dwattr $C$DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$991, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$992	.dwtag  DW_TAG_member
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$992, DW_AT_name("rsvd2")
	.dwattr $C$DW$992, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$992, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$992, DW_AT_bit_size(0x03)
	.dwattr $C$DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$992, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$993	.dwtag  DW_TAG_member
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$993, DW_AT_name("rsvd3")
	.dwattr $C$DW$993, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$993, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$993, DW_AT_bit_size(0x08)
	.dwattr $C$DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$993, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("SCIPRI_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$994	.dwtag  DW_TAG_member
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$994, DW_AT_name("all")
	.dwattr $C$DW$994, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$994, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$995	.dwtag  DW_TAG_member
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$995, DW_AT_name("bit")
	.dwattr $C$DW$995, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("SCIRXBUF_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$996	.dwtag  DW_TAG_member
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$996, DW_AT_name("SAR")
	.dwattr $C$DW$996, DW_AT_TI_symbol_name("_SAR")
	.dwattr $C$DW$996, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$996, DW_AT_bit_size(0x08)
	.dwattr $C$DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$996, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$997	.dwtag  DW_TAG_member
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$997, DW_AT_name("rsvd1")
	.dwattr $C$DW$997, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$997, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$997, DW_AT_bit_size(0x06)
	.dwattr $C$DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$997, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$998	.dwtag  DW_TAG_member
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$998, DW_AT_name("SCIFFPE")
	.dwattr $C$DW$998, DW_AT_TI_symbol_name("_SCIFFPE")
	.dwattr $C$DW$998, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$998, DW_AT_bit_size(0x01)
	.dwattr $C$DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$999	.dwtag  DW_TAG_member
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$999, DW_AT_name("SCIFFFE")
	.dwattr $C$DW$999, DW_AT_TI_symbol_name("_SCIFFFE")
	.dwattr $C$DW$999, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$999, DW_AT_bit_size(0x01)
	.dwattr $C$DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$999, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("SCIRXBUF_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$1000	.dwtag  DW_TAG_member
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1000, DW_AT_name("all")
	.dwattr $C$DW$1000, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1000, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1001	.dwtag  DW_TAG_member
	.dwattr $C$DW$1001, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$1001, DW_AT_name("bit")
	.dwattr $C$DW$1001, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1001, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("SCIRXEMU_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$1002	.dwtag  DW_TAG_member
	.dwattr $C$DW$1002, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1002, DW_AT_name("ERXDT")
	.dwattr $C$DW$1002, DW_AT_TI_symbol_name("_ERXDT")
	.dwattr $C$DW$1002, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1002, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1002, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1003	.dwtag  DW_TAG_member
	.dwattr $C$DW$1003, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1003, DW_AT_name("rsvd1")
	.dwattr $C$DW$1003, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1003, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1003, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1003, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("SCIRXEMU_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$1004	.dwtag  DW_TAG_member
	.dwattr $C$DW$1004, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1004, DW_AT_name("all")
	.dwattr $C$DW$1004, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1004, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1005	.dwtag  DW_TAG_member
	.dwattr $C$DW$1005, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$1005, DW_AT_name("bit")
	.dwattr $C$DW$1005, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1005, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("SCIRXST_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$1006	.dwtag  DW_TAG_member
	.dwattr $C$DW$1006, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1006, DW_AT_name("rsvd1")
	.dwattr $C$DW$1006, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1006, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1006, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1006, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1007	.dwtag  DW_TAG_member
	.dwattr $C$DW$1007, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1007, DW_AT_name("RXWAKE")
	.dwattr $C$DW$1007, DW_AT_TI_symbol_name("_RXWAKE")
	.dwattr $C$DW$1007, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1007, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1007, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1008	.dwtag  DW_TAG_member
	.dwattr $C$DW$1008, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1008, DW_AT_name("PE")
	.dwattr $C$DW$1008, DW_AT_TI_symbol_name("_PE")
	.dwattr $C$DW$1008, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1008, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1008, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1009	.dwtag  DW_TAG_member
	.dwattr $C$DW$1009, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1009, DW_AT_name("OE")
	.dwattr $C$DW$1009, DW_AT_TI_symbol_name("_OE")
	.dwattr $C$DW$1009, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1009, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1009, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1010	.dwtag  DW_TAG_member
	.dwattr $C$DW$1010, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1010, DW_AT_name("FE")
	.dwattr $C$DW$1010, DW_AT_TI_symbol_name("_FE")
	.dwattr $C$DW$1010, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1010, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1010, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1011	.dwtag  DW_TAG_member
	.dwattr $C$DW$1011, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1011, DW_AT_name("BRKDT")
	.dwattr $C$DW$1011, DW_AT_TI_symbol_name("_BRKDT")
	.dwattr $C$DW$1011, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1011, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1011, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1012	.dwtag  DW_TAG_member
	.dwattr $C$DW$1012, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1012, DW_AT_name("RXRDY")
	.dwattr $C$DW$1012, DW_AT_TI_symbol_name("_RXRDY")
	.dwattr $C$DW$1012, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1012, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1012, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1013	.dwtag  DW_TAG_member
	.dwattr $C$DW$1013, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1013, DW_AT_name("RXERROR")
	.dwattr $C$DW$1013, DW_AT_TI_symbol_name("_RXERROR")
	.dwattr $C$DW$1013, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1013, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1013, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1014	.dwtag  DW_TAG_member
	.dwattr $C$DW$1014, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1014, DW_AT_name("rsvd2")
	.dwattr $C$DW$1014, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1014, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1014, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1014, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("SCIRXST_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$1015	.dwtag  DW_TAG_member
	.dwattr $C$DW$1015, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1015, DW_AT_name("all")
	.dwattr $C$DW$1015, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1015, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1016	.dwtag  DW_TAG_member
	.dwattr $C$DW$1016, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$1016, DW_AT_name("bit")
	.dwattr $C$DW$1016, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1016, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("SCITXBUF_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$1017	.dwtag  DW_TAG_member
	.dwattr $C$DW$1017, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1017, DW_AT_name("TXDT")
	.dwattr $C$DW$1017, DW_AT_TI_symbol_name("_TXDT")
	.dwattr $C$DW$1017, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1017, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1017, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1018	.dwtag  DW_TAG_member
	.dwattr $C$DW$1018, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1018, DW_AT_name("rsvd1")
	.dwattr $C$DW$1018, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1018, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1018, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1018, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("SCITXBUF_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$1019	.dwtag  DW_TAG_member
	.dwattr $C$DW$1019, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1019, DW_AT_name("all")
	.dwattr $C$DW$1019, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1019, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1020	.dwtag  DW_TAG_member
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$1020, DW_AT_name("bit")
	.dwattr $C$DW$1020, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1020, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$97, DW_AT_name("SCI_REGS")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x10)
$C$DW$1021	.dwtag  DW_TAG_member
	.dwattr $C$DW$1021, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$1021, DW_AT_name("SCICCR")
	.dwattr $C$DW$1021, DW_AT_TI_symbol_name("_SCICCR")
	.dwattr $C$DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1021, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1022	.dwtag  DW_TAG_member
	.dwattr $C$DW$1022, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$1022, DW_AT_name("SCICTL1")
	.dwattr $C$DW$1022, DW_AT_TI_symbol_name("_SCICTL1")
	.dwattr $C$DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1022, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1023	.dwtag  DW_TAG_member
	.dwattr $C$DW$1023, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$1023, DW_AT_name("SCIHBAUD")
	.dwattr $C$DW$1023, DW_AT_TI_symbol_name("_SCIHBAUD")
	.dwattr $C$DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1023, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1024	.dwtag  DW_TAG_member
	.dwattr $C$DW$1024, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$1024, DW_AT_name("SCILBAUD")
	.dwattr $C$DW$1024, DW_AT_TI_symbol_name("_SCILBAUD")
	.dwattr $C$DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1024, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1025	.dwtag  DW_TAG_member
	.dwattr $C$DW$1025, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$1025, DW_AT_name("SCICTL2")
	.dwattr $C$DW$1025, DW_AT_TI_symbol_name("_SCICTL2")
	.dwattr $C$DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1025, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1026	.dwtag  DW_TAG_member
	.dwattr $C$DW$1026, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$1026, DW_AT_name("SCIRXST")
	.dwattr $C$DW$1026, DW_AT_TI_symbol_name("_SCIRXST")
	.dwattr $C$DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1026, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1027	.dwtag  DW_TAG_member
	.dwattr $C$DW$1027, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$1027, DW_AT_name("SCIRXEMU")
	.dwattr $C$DW$1027, DW_AT_TI_symbol_name("_SCIRXEMU")
	.dwattr $C$DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1027, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1028	.dwtag  DW_TAG_member
	.dwattr $C$DW$1028, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$1028, DW_AT_name("SCIRXBUF")
	.dwattr $C$DW$1028, DW_AT_TI_symbol_name("_SCIRXBUF")
	.dwattr $C$DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1028, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1029	.dwtag  DW_TAG_member
	.dwattr $C$DW$1029, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1029, DW_AT_name("rsvd1")
	.dwattr $C$DW$1029, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1029, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1030	.dwtag  DW_TAG_member
	.dwattr $C$DW$1030, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$1030, DW_AT_name("SCITXBUF")
	.dwattr $C$DW$1030, DW_AT_TI_symbol_name("_SCITXBUF")
	.dwattr $C$DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1030, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1031	.dwtag  DW_TAG_member
	.dwattr $C$DW$1031, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$1031, DW_AT_name("SCIFFTX")
	.dwattr $C$DW$1031, DW_AT_TI_symbol_name("_SCIFFTX")
	.dwattr $C$DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1031, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1032	.dwtag  DW_TAG_member
	.dwattr $C$DW$1032, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$1032, DW_AT_name("SCIFFRX")
	.dwattr $C$DW$1032, DW_AT_TI_symbol_name("_SCIFFRX")
	.dwattr $C$DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1032, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1033	.dwtag  DW_TAG_member
	.dwattr $C$DW$1033, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$1033, DW_AT_name("SCIFFCT")
	.dwattr $C$DW$1033, DW_AT_TI_symbol_name("_SCIFFCT")
	.dwattr $C$DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1033, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1034	.dwtag  DW_TAG_member
	.dwattr $C$DW$1034, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$1034, DW_AT_name("rsvd2")
	.dwattr $C$DW$1034, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1034, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1035	.dwtag  DW_TAG_member
	.dwattr $C$DW$1035, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$1035, DW_AT_name("SCIPRI")
	.dwattr $C$DW$1035, DW_AT_TI_symbol_name("_SCIPRI")
	.dwattr $C$DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1035, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97

$C$DW$1036	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1036, DW_AT_type(*$C$DW$T$97)

$C$DW$T$123	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$1036)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")


$C$DW$T$127	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$127

$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x20)


$C$DW$T$129	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x20)
$C$DW$1037	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1037, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$129

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

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("int16_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x20)


$C$DW$T$137	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
$C$DW$1038	.dwtag  DW_TAG_subrange_type

	.dwendtag $C$DW$T$137

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)


$C$DW$T$96	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x02)
$C$DW$1039	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1039, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$96

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)


$C$DW$T$144	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x06)
$C$DW$1040	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1040, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$144

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$1041	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1041, DW_AT_type(*$C$DW$T$12)

$C$DW$T$146	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$1041)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("int32_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)

$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("int32")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$154	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$154, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)

$C$DW$T$155	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$155, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)

$C$DW$T$156	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$156, DW_AT_address_class(0x20)


$C$DW$T$157	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
$C$DW$1042	.dwtag  DW_TAG_subrange_type

	.dwendtag $C$DW$T$157

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

$C$DW$1043	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1043, DW_AT_name("AL")
	.dwattr $C$DW$1043, DW_AT_location[DW_OP_reg0]

$C$DW$1044	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1044, DW_AT_name("AH")
	.dwattr $C$DW$1044, DW_AT_location[DW_OP_reg1]

$C$DW$1045	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1045, DW_AT_name("PL")
	.dwattr $C$DW$1045, DW_AT_location[DW_OP_reg2]

$C$DW$1046	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1046, DW_AT_name("PH")
	.dwattr $C$DW$1046, DW_AT_location[DW_OP_reg3]

$C$DW$1047	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1047, DW_AT_name("SP")
	.dwattr $C$DW$1047, DW_AT_location[DW_OP_reg20]

$C$DW$1048	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1048, DW_AT_name("XT")
	.dwattr $C$DW$1048, DW_AT_location[DW_OP_reg21]

$C$DW$1049	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1049, DW_AT_name("T")
	.dwattr $C$DW$1049, DW_AT_location[DW_OP_reg22]

$C$DW$1050	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1050, DW_AT_name("ST0")
	.dwattr $C$DW$1050, DW_AT_location[DW_OP_reg23]

$C$DW$1051	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1051, DW_AT_name("ST1")
	.dwattr $C$DW$1051, DW_AT_location[DW_OP_reg24]

$C$DW$1052	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1052, DW_AT_name("PC")
	.dwattr $C$DW$1052, DW_AT_location[DW_OP_reg25]

$C$DW$1053	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1053, DW_AT_name("RPC")
	.dwattr $C$DW$1053, DW_AT_location[DW_OP_reg26]

$C$DW$1054	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1054, DW_AT_name("FP")
	.dwattr $C$DW$1054, DW_AT_location[DW_OP_reg28]

$C$DW$1055	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1055, DW_AT_name("DP")
	.dwattr $C$DW$1055, DW_AT_location[DW_OP_reg29]

$C$DW$1056	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1056, DW_AT_name("SXM")
	.dwattr $C$DW$1056, DW_AT_location[DW_OP_reg30]

$C$DW$1057	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1057, DW_AT_name("PM")
	.dwattr $C$DW$1057, DW_AT_location[DW_OP_reg31]

$C$DW$1058	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1058, DW_AT_name("OVM")
	.dwattr $C$DW$1058, DW_AT_location[DW_OP_regx 0x20]

$C$DW$1059	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1059, DW_AT_name("PAGE0")
	.dwattr $C$DW$1059, DW_AT_location[DW_OP_regx 0x21]

$C$DW$1060	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1060, DW_AT_name("AMODE")
	.dwattr $C$DW$1060, DW_AT_location[DW_OP_regx 0x22]

$C$DW$1061	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1061, DW_AT_name("EALLOW")
	.dwattr $C$DW$1061, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$1062	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1062, DW_AT_name("INTM")
	.dwattr $C$DW$1062, DW_AT_location[DW_OP_regx 0x23]

$C$DW$1063	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1063, DW_AT_name("IFR")
	.dwattr $C$DW$1063, DW_AT_location[DW_OP_regx 0x24]

$C$DW$1064	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1064, DW_AT_name("IER")
	.dwattr $C$DW$1064, DW_AT_location[DW_OP_regx 0x25]

$C$DW$1065	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1065, DW_AT_name("V")
	.dwattr $C$DW$1065, DW_AT_location[DW_OP_regx 0x26]

$C$DW$1066	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1066, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$1066, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$1067	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1067, DW_AT_name("VOL")
	.dwattr $C$DW$1067, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$1068	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1068, DW_AT_name("AR0")
	.dwattr $C$DW$1068, DW_AT_location[DW_OP_reg4]

$C$DW$1069	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1069, DW_AT_name("XAR0")
	.dwattr $C$DW$1069, DW_AT_location[DW_OP_reg5]

$C$DW$1070	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1070, DW_AT_name("AR1")
	.dwattr $C$DW$1070, DW_AT_location[DW_OP_reg6]

$C$DW$1071	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1071, DW_AT_name("XAR1")
	.dwattr $C$DW$1071, DW_AT_location[DW_OP_reg7]

$C$DW$1072	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1072, DW_AT_name("AR2")
	.dwattr $C$DW$1072, DW_AT_location[DW_OP_reg8]

$C$DW$1073	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1073, DW_AT_name("XAR2")
	.dwattr $C$DW$1073, DW_AT_location[DW_OP_reg9]

$C$DW$1074	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1074, DW_AT_name("AR3")
	.dwattr $C$DW$1074, DW_AT_location[DW_OP_reg10]

$C$DW$1075	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1075, DW_AT_name("XAR3")
	.dwattr $C$DW$1075, DW_AT_location[DW_OP_reg11]

$C$DW$1076	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1076, DW_AT_name("AR4")
	.dwattr $C$DW$1076, DW_AT_location[DW_OP_reg12]

$C$DW$1077	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1077, DW_AT_name("XAR4")
	.dwattr $C$DW$1077, DW_AT_location[DW_OP_reg13]

$C$DW$1078	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1078, DW_AT_name("AR5")
	.dwattr $C$DW$1078, DW_AT_location[DW_OP_reg14]

$C$DW$1079	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1079, DW_AT_name("XAR5")
	.dwattr $C$DW$1079, DW_AT_location[DW_OP_reg15]

$C$DW$1080	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1080, DW_AT_name("AR6")
	.dwattr $C$DW$1080, DW_AT_location[DW_OP_reg16]

$C$DW$1081	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1081, DW_AT_name("XAR6")
	.dwattr $C$DW$1081, DW_AT_location[DW_OP_reg17]

$C$DW$1082	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1082, DW_AT_name("AR7")
	.dwattr $C$DW$1082, DW_AT_location[DW_OP_reg18]

$C$DW$1083	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1083, DW_AT_name("XAR7")
	.dwattr $C$DW$1083, DW_AT_location[DW_OP_reg19]

$C$DW$1084	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1084, DW_AT_name("R0H")
	.dwattr $C$DW$1084, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$1085	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1085, DW_AT_name("R1H")
	.dwattr $C$DW$1085, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$1086	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1086, DW_AT_name("R2H")
	.dwattr $C$DW$1086, DW_AT_location[DW_OP_regx 0x33]

$C$DW$1087	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1087, DW_AT_name("R3H")
	.dwattr $C$DW$1087, DW_AT_location[DW_OP_regx 0x37]

$C$DW$1088	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1088, DW_AT_name("R4H")
	.dwattr $C$DW$1088, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$1089	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1089, DW_AT_name("R5H")
	.dwattr $C$DW$1089, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$1090	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1090, DW_AT_name("R6H")
	.dwattr $C$DW$1090, DW_AT_location[DW_OP_regx 0x43]

$C$DW$1091	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1091, DW_AT_name("R7H")
	.dwattr $C$DW$1091, DW_AT_location[DW_OP_regx 0x47]

$C$DW$1092	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1092, DW_AT_name("RB")
	.dwattr $C$DW$1092, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$1093	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1093, DW_AT_name("STF")
	.dwattr $C$DW$1093, DW_AT_location[DW_OP_regx 0x28]

$C$DW$1094	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1094, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$1094, DW_AT_location[DW_OP_reg27]

$C$DW$1095	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1095, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$1095, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$1096	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1096, DW_AT_name("VCRC")
	.dwattr $C$DW$1096, DW_AT_location[DW_OP_regx 0x50]

$C$DW$1097	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1097, DW_AT_name("VSTATUS")
	.dwattr $C$DW$1097, DW_AT_location[DW_OP_regx 0x51]

	.dwendtag $C$DW$CU

