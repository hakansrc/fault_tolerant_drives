;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.1.LTS *
;* Date/Time created: Wed Nov 18 21:47:57 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla0 --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/drv8305.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\admin\Documents\GitHub\fault_tolerant_drives\Software\MPC_WS\FCL_379XL\F2837x_RAM")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DRV8305_SPI_Write")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$339)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$34)

	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("DRV8305_SPI_Read")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$339)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$34)

	.dwendtag $C$DW$4

;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\opt2000.exe C:\\Users\\admin\\AppData\\Local\\Temp\\{3C32425F-B459-48F1-A2D2-59FA95AE82DA} C:\\Users\\admin\\AppData\\Local\\Temp\\{3489A9A9-D4E7-4927-AAAA-2EB28135B5CF} 
;	C:\ti\ccs1011\ccs\tools\compiler\ti-cgt-c2000_20.2.1.LTS\bin\ac2000.exe -@C:\\Users\\admin\\AppData\\Local\\Temp\\{49C44799-3BDD-45EE-9870-9190D6F1943C} 
	.sect	".text"
	.clink
	.global	_InitDRV8305Regs

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("InitDRV8305Regs")
	.dwattr $C$DW$7, DW_AT_low_pc(_InitDRV8305Regs)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_InitDRV8305Regs")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../sources/drv8305.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/drv8305.c",line 22,column 1,is_stmt,address _InitDRV8305Regs,isa 0

	.dwfde $C$DW$CIE, _InitDRV8305Regs
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("motor")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_motor")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("DRV_gain")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_DRV_gain")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _InitDRV8305Regs              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_InitDRV8305Regs:
;* AR7   assigned to $O$v5
;* AL    assigned to $O$S1
;* AL    assigned to $O$S2
;* AH    assigned to $O$S3
;* AR4   assigned to _motor
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("motor")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_motor")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to _DRV_gain
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("DRV_gain")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_DRV_gain")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/drv8305.c",line 24,column 2,is_stmt,isa 0
        MOVL      XAR0,#385             ; [CPU_ALU] |24| 
	.dwpsn	file "../sources/drv8305.c",line 23,column 2,is_stmt,isa 0
        MOVL      XAR1,#384             ; [CPU_ALU] |23| 
	.dwpsn	file "../sources/drv8305.c",line 24,column 2,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |24| 
	.dwpsn	file "../sources/drv8305.c",line 23,column 2,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |23| 
	.dwpsn	file "../sources/drv8305.c",line 25,column 2,is_stmt,isa 0
        MOVL      XAR0,#386             ; [CPU_ALU] |25| 
	.dwpsn	file "../sources/drv8305.c",line 56,column 2,is_stmt,isa 0
        CMPB      AL,#10                ; [CPU_ALU] |56| 
	.dwpsn	file "../sources/drv8305.c",line 25,column 2,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_FPU] |25| 
	.dwpsn	file "../sources/drv8305.c",line 22,column 1,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_FPU] |22| 
	.dwpsn	file "../sources/drv8305.c",line 45,column 2,is_stmt,isa 0
        MOVL      XAR1,#388             ; [CPU_FPU] |45| 
	.dwpsn	file "../sources/drv8305.c",line 26,column 2,is_stmt,isa 0
        MOVL      XAR0,#388             ; [CPU_FPU] |26| 
        MOV       *+XAR4[AR0],#0        ; [CPU_FPU] |26| 
	.dwpsn	file "../sources/drv8305.c",line 31,column 2,is_stmt,isa 0
        MOVL      XAR0,#384             ; [CPU_FPU] |31| 
        MOVB      *+XAR4[AR0],#68,UNC   ; [CPU_FPU] |31| 
	.dwpsn	file "../sources/drv8305.c",line 35,column 2,is_stmt,isa 0
        MOVL      XAR0,#385             ; [CPU_FPU] |35| 
	.dwpsn	file "../sources/drv8305.c",line 45,column 2,is_stmt,isa 0
        MOVB      *+XAR4[AR1],#32,UNC   ; [CPU_FPU] |45| 
	.dwpsn	file "../sources/drv8305.c",line 35,column 2,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#68,UNC   ; [CPU_FPU] |35| 
	.dwpsn	file "../sources/drv8305.c",line 39,column 2,is_stmt,isa 0
        MOVL      XAR0,#386             ; [CPU_FPU] |39| 
        MOVB      *+XAR4[AR0],#150,UNC  ; [CPU_FPU] |39| 
	.dwpsn	file "../sources/drv8305.c",line 56,column 2,is_stmt,isa 0
        B         $C$L1,NEQ             ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
        MOVB      AH,#0                 ; [CPU_ALU] |56| 
        B         $C$L4,UNC             ; [CPU_ALU] |56| 
        ; branch occurs ; [] |56| 
$C$L1:    
        CMPB      AL,#20                ; [CPU_ALU] |56| 
        B         $C$L2,NEQ             ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
        MOVB      AH,#1                 ; [CPU_ALU] |56| 
        B         $C$L4,UNC             ; [CPU_ALU] |56| 
        ; branch occurs ; [] |56| 
$C$L2:    
        CMPB      AL,#40                ; [CPU_ALU] |56| 
        B         $C$L3,NEQ             ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
        MOVB      AH,#2                 ; [CPU_ALU] |56| 
        B         $C$L4,UNC             ; [CPU_ALU] |56| 
        ; branch occurs ; [] |56| 
$C$L3:    
        MOVB      AH,#3                 ; [CPU_ALU] |56| 
$C$L4:    
        ANDB      AH,#3                 ; [CPU_ALU] |56| 
	.dwpsn	file "../sources/drv8305.c",line 59,column 2,is_stmt,isa 0
        CMPB      AL,#10                ; [CPU_ALU] |59| 
	.dwpsn	file "../sources/drv8305.c",line 56,column 2,is_stmt,isa 0
        MOVZ      AR7,AH                ; [CPU_FPU] |56| 
	.dwpsn	file "../sources/drv8305.c",line 59,column 2,is_stmt,isa 0
        B         $C$L5,NEQ             ; [CPU_ALU] |59| 
        ; branchcc occurs ; [] |59| 
        MOVB      AL,#0                 ; [CPU_ALU] |59| 
        B         $C$L8,UNC             ; [CPU_ALU] |59| 
        ; branch occurs ; [] |59| 
$C$L5:    
        CMPB      AL,#20                ; [CPU_ALU] |59| 
        B         $C$L6,NEQ             ; [CPU_ALU] |59| 
        ; branchcc occurs ; [] |59| 
        MOVB      AL,#1                 ; [CPU_ALU] |59| 
        B         $C$L8,UNC             ; [CPU_ALU] |59| 
        ; branch occurs ; [] |59| 
$C$L6:    
        CMPB      AL,#40                ; [CPU_ALU] |59| 
        B         $C$L7,NEQ             ; [CPU_ALU] |59| 
        ; branchcc occurs ; [] |59| 
        MOVB      AL,#2                 ; [CPU_ALU] |59| 
        B         $C$L8,UNC             ; [CPU_ALU] |59| 
        ; branch occurs ; [] |59| 
$C$L7:    
        MOVB      AL,#3                 ; [CPU_ALU] |59| 
$C$L8:    
        AND       AR7,#0xfff3           ; [CPU_ALU] |59| 
        MOV       ACC,AL << #2          ; [CPU_ALU] |59| 
        MOV       AH,AL                 ; [CPU_ALU] |59| 
        ANDB      AH,#0x0f              ; [CPU_ALU] |59| 
        MOV       AL,AR7                ; [CPU_FPU] |59| 
        OR        AL,AH                 ; [CPU_ALU] |59| 
        MOVZ      AR7,AL                ; [CPU_ALU] |59| 
        MOV       AL,AR6                ; [CPU_ALU] |59| 
	.dwpsn	file "../sources/drv8305.c",line 62,column 2,is_stmt,isa 0
        CMPB      AL,#10                ; [CPU_ALU] |62| 
        B         $C$L9,NEQ             ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
        MOVB      AL,#0                 ; [CPU_ALU] |62| 
        B         $C$L12,UNC            ; [CPU_ALU] |62| 
        ; branch occurs ; [] |62| 
$C$L9:    
        CMPB      AL,#20                ; [CPU_ALU] |62| 
        B         $C$L10,NEQ            ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
        MOVB      AL,#1                 ; [CPU_ALU] |62| 
        B         $C$L12,UNC            ; [CPU_ALU] |62| 
        ; branch occurs ; [] |62| 
$C$L10:    
        CMPB      AL,#40                ; [CPU_ALU] |62| 
        B         $C$L11,NEQ            ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
        MOVB      AL,#2                 ; [CPU_ALU] |62| 
        B         $C$L12,UNC            ; [CPU_ALU] |62| 
        ; branch occurs ; [] |62| 
$C$L11:    
        MOVB      AL,#3                 ; [CPU_ALU] |62| 
$C$L12:    
        ANDB      AL,#3                 ; [CPU_ALU] |62| 
        AND       AR7,#0xf80f           ; [CPU_ALU] |62| 
	.dwpsn	file "../sources/drv8305.c",line 75,column 2,is_stmt,isa 0
        MOVL      XAR0,#391             ; [CPU_FPU] |75| 
	.dwpsn	file "../sources/drv8305.c",line 70,column 2,is_stmt,isa 0
        MOVL      XAR1,#390             ; [CPU_FPU] |70| 
	.dwpsn	file "../sources/drv8305.c",line 62,column 2,is_stmt,isa 0
        LSL       AL,4                  ; [CPU_ALU] |62| 
        OR        AR7,AL                ; [CPU_ALU] |62| 
	.dwpsn	file "../sources/drv8305.c",line 75,column 2,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#200,UNC  ; [CPU_ALU] |75| 
	.dwpsn	file "../sources/drv8305.c",line 62,column 2,is_stmt,isa 0
        MOVL      XAR0,#389             ; [CPU_ALU] |62| 
	.dwpsn	file "../sources/drv8305.c",line 70,column 2,is_stmt,isa 0
        MOV       *+XAR4[AR1],#266      ; [CPU_ALU] |70| 
	.dwpsn	file "../sources/drv8305.c",line 62,column 2,is_stmt,isa 0
        MOV       *+XAR4[AR0],AR7       ; [CPU_ALU] |62| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../sources/drv8305.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x4f)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.global	_InitDRV8305

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("InitDRV8305")
	.dwattr $C$DW$13, DW_AT_low_pc(_InitDRV8305)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_InitDRV8305")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../sources/drv8305.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/drv8305.c",line 87,column 1,is_stmt,address _InitDRV8305,isa 0

	.dwfde $C$DW$CIE, _InitDRV8305
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("motor")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_motor")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _InitDRV8305                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_InitDRV8305:
;* AR6   assigned to $O$v1
;* AR1   assigned to _motor
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("motor")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_motor")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg6]

;* AR5   assigned to _ptr1
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("ptr1")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_ptr1")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$346)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to _ptr2
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("ptr2")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_ptr2")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$346)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/drv8305.c",line 99,column 2,is_stmt,isa 0
        MOVB      AL,#5                 ; [CPU_ALU] |99| 
	.dwpsn	file "../sources/drv8305.c",line 87,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_ALU] |87| 
	.dwpsn	file "../sources/drv8305.c",line 99,column 2,is_stmt,isa 0
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |99| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |99| 
	.dwpsn	file "../sources/drv8305.c",line 100,column 2,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_ALU] |100| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |100| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |100| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |100| 
	.dwpsn	file "../sources/drv8305.c",line 101,column 2,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |101| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |101| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |101| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |101| 
	.dwpsn	file "../sources/drv8305.c",line 102,column 2,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_ALU] |102| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |102| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |102| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |102| 
	.dwpsn	file "../sources/drv8305.c",line 103,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_ALU] |103| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |103| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |103| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |103| 
	.dwpsn	file "../sources/drv8305.c",line 104,column 2,is_stmt,isa 0
        MOVB      AL,#11                ; [CPU_ALU] |104| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |104| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |104| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |104| 
	.dwpsn	file "../sources/drv8305.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_ALU] |105| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |105| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |105| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |105| 
	.dwpsn	file "../sources/drv8305.c",line 110,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |110| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |110| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |110| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |110| 
        MOVL      XAR0,#380             ; [CPU_ALU] |110| 
        AND       AL,AL,#0x05ff         ; [CPU_ALU] |110| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |110| 
	.dwpsn	file "../sources/drv8305.c",line 111,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |111| 
        MOVB      AL,#2                 ; [CPU_ALU] |111| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |111| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |111| 
        MOVL      XAR0,#381             ; [CPU_ALU] |111| 
        AND       AL,AL,#0x07e7         ; [CPU_ALU] |111| 
	.dwpsn	file "../sources/drv8305.c",line 112,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/drv8305.c",line 111,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |111| 
	.dwpsn	file "../sources/drv8305.c",line 112,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |112| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |112| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |112| 
        MOVL      XAR0,#382             ; [CPU_ALU] |112| 
        AND       AL,AL,#0x0777         ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/drv8305.c",line 113,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/drv8305.c",line 112,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |112| 
	.dwpsn	file "../sources/drv8305.c",line 113,column 2,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |113| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |113| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |113| 
        MOVL      XAR0,#383             ; [CPU_ALU] |113| 
        AND       AL,AL,#0x07e0         ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/drv8305.c",line 114,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |114| 
	.dwpsn	file "../sources/drv8305.c",line 113,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |113| 
	.dwpsn	file "../sources/drv8305.c",line 114,column 2,is_stmt,isa 0
        MOVB      AL,#5                 ; [CPU_ALU] |114| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |114| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |114| 
        MOVL      XAR0,#392             ; [CPU_ALU] |114| 
        AND       AL,AL,#0x03ff         ; [CPU_ALU] |114| 
	.dwpsn	file "../sources/drv8305.c",line 115,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |115| 
	.dwpsn	file "../sources/drv8305.c",line 114,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |114| 
	.dwpsn	file "../sources/drv8305.c",line 115,column 2,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_ALU] |115| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |115| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |115| 
        MOVL      XAR0,#393             ; [CPU_ALU] |115| 
        AND       AL,AL,#0x03ff         ; [CPU_ALU] |115| 
	.dwpsn	file "../sources/drv8305.c",line 116,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/drv8305.c",line 115,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |115| 
	.dwpsn	file "../sources/drv8305.c",line 116,column 2,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |116| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |116| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |116| 
        MOVL      XAR0,#394             ; [CPU_ALU] |116| 
        AND       AL,AL,#0x03ff         ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/drv8305.c",line 117,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |117| 
	.dwpsn	file "../sources/drv8305.c",line 116,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |116| 
	.dwpsn	file "../sources/drv8305.c",line 117,column 2,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_ALU] |117| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |117| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |117| 
        MOVL      XAR0,#395             ; [CPU_ALU] |117| 
        AND       AL,AL,#0x07ff         ; [CPU_ALU] |117| 
	.dwpsn	file "../sources/drv8305.c",line 118,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/drv8305.c",line 117,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |117| 
	.dwpsn	file "../sources/drv8305.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_ALU] |118| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |118| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |118| 
        MOVL      XAR0,#396             ; [CPU_ALU] |118| 
        AND       AL,AL,#0x07ff         ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/drv8305.c",line 119,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |119| 
	.dwpsn	file "../sources/drv8305.c",line 118,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |118| 
	.dwpsn	file "../sources/drv8305.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#11                ; [CPU_ALU] |119| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |119| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |119| 
        MOVL      XAR0,#397             ; [CPU_ALU] |119| 
        AND       AL,AL,#0x031f         ; [CPU_ALU] |119| 
	.dwpsn	file "../sources/drv8305.c",line 120,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |120| 
	.dwpsn	file "../sources/drv8305.c",line 119,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |119| 
	.dwpsn	file "../sources/drv8305.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_ALU] |120| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_DRV8305_SPI_Write")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Write   ; [CPU_ALU] |120| 
        ; call occurs [#_DRV8305_SPI_Write] ; [] |120| 
        MOVL      XAR0,#398             ; [CPU_ALU] |120| 
        ANDB      AL,#255               ; [CPU_ALU] |120| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |120| 
	.dwpsn	file "../sources/drv8305.c",line 125,column 2,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |125| 
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        MOVL      XAR0,#380             ; [CPU_ALU] |132| 
	.dwpsn	file "../sources/drv8305.c",line 125,column 2,is_stmt,isa 0
        ADD       ACC,#381 << 0         ; [CPU_ALU] |125| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |125| 
	.dwpsn	file "../sources/drv8305.c",line 126,column 2,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |126| 
        ADD       ACC,#49 << 3          ; [CPU_ALU] |126| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |126| 
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        MOV       AL,*+XAR1[AR0]        ; [CPU_ALU] |132| 
	.dwpsn	file "../sources/drv8305.c",line 127,column 2,is_stmt,isa 0
        MOVL      XAR0,#399             ; [CPU_ALU] |127| 
        MOV       *+XAR1[AR0],#0        ; [CPU_ALU] |127| 
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        B         $C$L13,NEQ            ; [CPU_ALU] |132| 
        ; branchcc occurs ; [] |132| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |132| 
	.dwpsn	file "../sources/drv8305.c",line 127,column 2,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |127| 
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        B         $C$L14,NEQ            ; [CPU_ALU] |132| 
        ; branchcc occurs ; [] |132| 
        B         $C$L15,UNC            ; [CPU_ALU] |132| 
        ; branch occurs ; [] |132| 
$C$L13:    
	.dwpsn	file "../sources/drv8305.c",line 133,column 4,is_stmt,isa 0
        MOVB      *+XAR1[AR0],#2,UNC    ; [CPU_ALU] |133| 
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |132| 
	.dwpsn	file "../sources/drv8305.c",line 133,column 4,is_stmt,isa 0
        MOVB      XAR6,#2               ; [CPU_ALU] |133| 
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        B         $C$L15,EQ             ; [CPU_ALU] |132| 
        ; branchcc occurs ; [] |132| 
$C$L14:    
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../sources/drv8305.c",line 133,column 4,is_stmt,isa 0
        ORB       AL,#0x04              ; [CPU_ALU] |133| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |133| 
        MOVZ      AR6,AL                ; [CPU_ALU] |133| 
$C$L15:    
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        MOV       AL,*+XAR5[1]          ; [CPU_ALU] |132| 
        B         $C$L16,EQ             ; [CPU_ALU] |132| 
        ; branchcc occurs ; [] |132| 
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../sources/drv8305.c",line 133,column 4,is_stmt,isa 0
        ORB       AL,#0x08              ; [CPU_ALU] |133| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |133| 
        MOVZ      AR6,AL                ; [CPU_ALU] |133| 
$C$L16:    
	.dwpsn	file "../sources/drv8305.c",line 132,column 3,is_stmt,isa 0
        MOV       AL,*+XAR5[2]          ; [CPU_ALU] |132| 
        B         $C$L17,EQ             ; [CPU_ALU] |132| 
        ; branchcc occurs ; [] |132| 
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../sources/drv8305.c",line 133,column 4,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |133| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |133| 
        MOVZ      AR6,AL                ; [CPU_ALU] |133| 
$C$L17:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[3]         ; [CPU_ALU] |140| 
        MOVU      ACC,*XAR4++           ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L18,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |141| 
        MOVZ      AR6,AL                ; [CPU_ALU] |141| 
$C$L18:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[4]         ; [CPU_ALU] |140| 
        MOVU      ACC,*XAR4++           ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L19,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        ORB       AL,#0x40              ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |141| 
        MOVZ      AR6,AL                ; [CPU_ALU] |141| 
$C$L19:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[5]         ; [CPU_ALU] |140| 
        MOVU      ACC,*XAR4++           ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L20,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
        MOV       AL,AR6                ; [CPU_ALU] 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        ORB       AL,#0x80              ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |141| 
        MOVZ      AR6,AL                ; [CPU_ALU] |141| 
$C$L20:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVZ      AR7,*+XAR5[7]         ; [CPU_ALU] |140| 
        MOVU      ACC,*XAR4++           ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L21,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        OR        AR6,#0x0200           ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AR6       ; [CPU_ALU] |141| 
$C$L21:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |140| 
        MOVZ      AR7,*+XAR5[AR0]       ; [CPU_ALU] |140| 
        MOVU      ACC,*XAR4++           ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L22,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        OR        AR6,#0x0400           ; [CPU_ALU] |141| 
        MOVL      XAR0,#399             ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AR6       ; [CPU_ALU] |141| 
$C$L22:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |140| 
        MOVZ      AR7,*+XAR5[AR0]       ; [CPU_ALU] |140| 
        MOVU      ACC,*XAR4++           ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L23,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        OR        AR6,#0x0800           ; [CPU_ALU] |141| 
        MOVL      XAR0,#399             ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AR6       ; [CPU_ALU] |141| 
$C$L23:    
	.dwpsn	file "../sources/drv8305.c",line 140,column 4,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |140| 
        MOVZ      AR7,*+XAR5[AR0]       ; [CPU_ALU] |140| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |140| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |140| 
        B         $C$L24,EQ             ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
	.dwpsn	file "../sources/drv8305.c",line 141,column 5,is_stmt,isa 0
        OR        AR6,#0x1000           ; [CPU_ALU] |141| 
        MOVL      XAR0,#399             ; [CPU_ALU] |141| 
        MOV       *+XAR1[AR0],AR6       ; [CPU_ALU] |141| 
$C$L24:    
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../sources/drv8305.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink
	.global	_DRV8305_diagnostics

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("DRV8305_diagnostics")
	.dwattr $C$DW$37, DW_AT_low_pc(_DRV8305_diagnostics)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_DRV8305_diagnostics")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../sources/drv8305.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x98)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../sources/drv8305.c",line 153,column 1,is_stmt,address _DRV8305_diagnostics,isa 0

	.dwfde $C$DW$CIE, _DRV8305_diagnostics
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("motor")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_motor")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _DRV8305_diagnostics          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_DRV8305_diagnostics:
;* AR1   assigned to _motor
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("motor")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_motor")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../sources/drv8305.c",line 154,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/drv8305.c",line 153,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_ALU] |153| 
	.dwpsn	file "../sources/drv8305.c",line 154,column 2,is_stmt,isa 0
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |154| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |154| 
        MOVL      XAR0,#380             ; [CPU_ALU] |154| 
        AND       AL,AL,#0x05ff         ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/drv8305.c",line 155,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |155| 
	.dwpsn	file "../sources/drv8305.c",line 154,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |154| 
	.dwpsn	file "../sources/drv8305.c",line 155,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |155| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |155| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |155| 
        MOVL      XAR0,#381             ; [CPU_ALU] |155| 
        AND       AL,AL,#0x07e7         ; [CPU_ALU] |155| 
	.dwpsn	file "../sources/drv8305.c",line 156,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |156| 
	.dwpsn	file "../sources/drv8305.c",line 155,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |155| 
	.dwpsn	file "../sources/drv8305.c",line 156,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |156| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |156| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |156| 
        MOVL      XAR0,#382             ; [CPU_ALU] |156| 
        AND       AL,AL,#0x0777         ; [CPU_ALU] |156| 
	.dwpsn	file "../sources/drv8305.c",line 157,column 2,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |157| 
	.dwpsn	file "../sources/drv8305.c",line 156,column 2,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |156| 
	.dwpsn	file "../sources/drv8305.c",line 157,column 2,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |157| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_DRV8305_SPI_Read")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #_DRV8305_SPI_Read    ; [CPU_ALU] |157| 
        ; call occurs [#_DRV8305_SPI_Read] ; [] |157| 
        MOVL      XAR0,#383             ; [CPU_ALU] |157| 
        AND       AL,AL,#0x07e0         ; [CPU_ALU] |157| 
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |157| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../sources/drv8305.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0xb4)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_DRV8305_SPI_Write
	.global	_DRV8305_SPI_Read

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0a)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("As")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_As")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("Bs")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_Bs")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_name("Cs")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_Cs")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("Alpha")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_Alpha")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("Beta")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_Beta")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("CLARKE")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x0e)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("Alpha")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_Alpha")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("Beta")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_Beta")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("Angle")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_Angle")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("Ds")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_Ds")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("Qs")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_Qs")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("Sine")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_Sine")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("Cosine")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_Cosine")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("PARK")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x0e)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("Alpha")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_Alpha")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("Beta")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_Beta")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("Angle")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_Angle")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("Ds")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_Ds")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("Qs")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_Qs")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("Sine")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_Sine")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("Cosine")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_Cosine")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("IPARK")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x20)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("Ref")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_Ref")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("Fdb")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_Fdb")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("Err")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_Err")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("Kp")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_Kp")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("Up")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_Up")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("Ui")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_Ui")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("Ud")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_Ud")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("OutPreSat")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_OutPreSat")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("OutMax")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_OutMax")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("OutMin")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_OutMin")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("Out")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_Out")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("SatErr")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_SatErr")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("Ki")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_Ki")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("Kc")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_Kc")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("Kd")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_Kd")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("Up1")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_Up1")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("PIDREG3")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x18)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("Ref")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_Ref")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("Fbk")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_Fbk")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("Out")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_Out")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("Kp")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_Kp")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("Ki")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_Ki")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("Umax")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_Umax")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("Umin")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_Umin")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("up")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_up")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("ui")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_ui")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("v1")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_v1")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("i1")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_i1")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("w1")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_w1")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("PI_CONTROLLER")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x0a)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("Ref")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_Ref")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("Fbk")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_Fbk")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("Out")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_Out")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("c1")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_c1")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("c2")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_c2")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("PID_TERMINALS")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0e)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("Kr")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_Kr")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_name("Kp")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_Kp")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("Ki")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_Ki")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("Kd")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_Kd")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("Km")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_Km")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("Umax")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_Umax")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("Umin")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_Umin")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("PID_PARAMETERS")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x10)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("up")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_up")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("ui")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_ui")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("ud")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_ud")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("v1")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_v1")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("i1")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_i1")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("d1")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_d1")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("d2")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_d2")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("w1")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_w1")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("PID_DATA")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x28)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$112, DW_AT_name("term")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_term")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$113, DW_AT_name("param")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_param")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$114, DW_AT_name("data")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("PID_CONTROLLER")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x22)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$115, DW_AT_name("Ref")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_Ref")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$116, DW_AT_name("Fbk")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_Fbk")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$117, DW_AT_name("Err")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_Err")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$118, DW_AT_name("xErr")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_xErr")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$119, DW_AT_name("Out")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_Out")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$120, DW_AT_name("CarryOver")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_CarryOver")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$121, DW_AT_name("Kp")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_Kp")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$122, DW_AT_name("Ki")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_Ki")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$123, DW_AT_name("Kerr")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_Kerr")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$124, DW_AT_name("Kxerr")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_Kxerr")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$125, DW_AT_name("KerrOld")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_KerrOld")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$126, DW_AT_name("cosWTs")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_cosWTs")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$127, DW_AT_name("sinWTs")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_sinWTs")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$128, DW_AT_name("expVal")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_expVal")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$129, DW_AT_name("kDirect")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_kDirect")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$130, DW_AT_name("Umax")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_Umax")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$131, DW_AT_name("Umin")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_Umin")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("CURRENT_CONTROLLER")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x12)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("Ualpha")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_Ualpha")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("Ubeta")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_Ubeta")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("Ta")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_Ta")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("Tb")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_Tb")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("Tc")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_Tc")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("tmp1")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_tmp1")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("tmp2")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_tmp2")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("tmp3")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_tmp3")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$140, DW_AT_name("VecSector")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_VecSector")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("SVGEN")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x10)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("TargetValue")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_TargetValue")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$142, DW_AT_name("RampDelayMax")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_RampDelayMax")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("RampLowLimit")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_RampLowLimit")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("RampHighLimit")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_RampHighLimit")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$145, DW_AT_name("RampDelayCount")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_RampDelayCount")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("SetpointValue")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_SetpointValue")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$147, DW_AT_name("EqualFlag")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_EqualFlag")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("Tmp")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_Tmp")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("RMPCNTL")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x0c)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("Freq")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_Freq")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("StepAngleMax")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_StepAngleMax")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("Angle")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_Angle")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("Gain")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_Gain")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("Out")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_Out")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("Offset")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_Offset")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("RAMPGEN")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x16)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("DcBusVolt")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_DcBusVolt")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("MfuncV1")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_MfuncV1")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("MfuncV2")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_MfuncV2")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("MfuncV3")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_MfuncV3")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$159, DW_AT_name("OutOfPhase")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_OutOfPhase")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("VphaseA")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_VphaseA")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("VphaseB")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_VphaseB")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("VphaseC")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_VphaseC")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("Valpha")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_Valpha")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("Vbeta")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_Vbeta")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("temp")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("PHASEVOLTAGE")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x14)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("ElecTheta")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_ElecTheta")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$167, DW_AT_name("DirectionQep")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_DirectionQep")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("OldElecTheta")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_OldElecTheta")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("Speed")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_Speed")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$170, DW_AT_name("BaseRpm")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_BaseRpm")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$171, DW_AT_name("K1")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_K1")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("K2")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_K2")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("K3")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_K3")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$174, DW_AT_name("SpeedRpm")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_SpeedRpm")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("Tmp")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_Tmp")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("SPEED_MEAS_QEP")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x12)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$176, DW_AT_name("ElecTheta")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_ElecTheta")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$177, DW_AT_name("MechTheta")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_MechTheta")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$178, DW_AT_name("DirectionQep")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_DirectionQep")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$179, DW_AT_name("QepPeriod")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_QepPeriod")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$180, DW_AT_name("QepCountIndex")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_QepCountIndex")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$181, DW_AT_name("RawTheta")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_RawTheta")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$182, DW_AT_name("MechScaler")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_MechScaler")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$183, DW_AT_name("LineEncoder")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_LineEncoder")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$184, DW_AT_name("PolePairs")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_PolePairs")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$185, DW_AT_name("CalibratedAngle")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_CalibratedAngle")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$186, DW_AT_name("IndexSyncFlag")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_IndexSyncFlag")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("QEP")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x07)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$187, DW_AT_name("stat_reg1")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_stat_reg1")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$188, DW_AT_name("stat_reg2")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_stat_reg2")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$189, DW_AT_name("cntrl_reg1")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_cntrl_reg1")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$190, DW_AT_name("cntrl_reg2")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_cntrl_reg2")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$191, DW_AT_name("readCntrl1")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_readCntrl1")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$192, DW_AT_name("readCntrl2")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_readCntrl2")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$193, DW_AT_name("DRV_fault")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_DRV_fault")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("DRV8301_Vars")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x15)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$194, DW_AT_name("Rsvd0")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_Rsvd0")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$195, DW_AT_name("status1_wwd")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_status1_wwd")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$196, DW_AT_name("status2_ov_vds")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_status2_ov_vds")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$197, DW_AT_name("status3_IC")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_status3_IC")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$198, DW_AT_name("status4_gd_Vgs")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_status4_gd_Vgs")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$199, DW_AT_name("cntrl5_hs_gd")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_cntrl5_hs_gd")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$200, DW_AT_name("cntrl6_ls_gd")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_cntrl6_ls_gd")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$201, DW_AT_name("cntrl7_gd")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_cntrl7_gd")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$202, DW_AT_name("Rsvd8")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_Rsvd8")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$203, DW_AT_name("cntrl9_IC_ops")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_cntrl9_IC_ops")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$204, DW_AT_name("cntrlA_shunt_amp")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_cntrlA_shunt_amp")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$205, DW_AT_name("cntrlB_Vreg")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_cntrlB_Vreg")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$206, DW_AT_name("cntrlC_Vds_SNS")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_cntrlC_Vds_SNS")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$207, DW_AT_name("readCntrl5")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_readCntrl5")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$208, DW_AT_name("readCntrl6")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_readCntrl6")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$209, DW_AT_name("readCntrl7")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_readCntrl7")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$210, DW_AT_name("readCntrl9")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_readCntrl9")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$211, DW_AT_name("readCntrlA")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_readCntrlA")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$212, DW_AT_name("readCntrlB")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_readCntrlB")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$213, DW_AT_name("readCntrlC")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_readCntrlC")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$214, DW_AT_name("DRV_fault")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_DRV_fault")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("DRV8305_Vars")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)


$C$DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x1ce)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$215, DW_AT_name("PwmARegs")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_PwmARegs")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$216, DW_AT_name("PwmBRegs")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_PwmBRegs")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$217, DW_AT_name("PwmCRegs")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_PwmCRegs")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$218, DW_AT_name("QepRegs")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_QepRegs")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$219, DW_AT_name("SpiRegs")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_SpiRegs")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$220, DW_AT_name("CmpssARegs")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_CmpssARegs")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$221, DW_AT_name("CmpssBRegs")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_CmpssBRegs")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$222, DW_AT_name("CmpssCRegs")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_CmpssCRegs")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$223, DW_AT_name("CurA_PPBRESULT")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_CurA_PPBRESULT")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$224, DW_AT_name("CurB_PPBRESULT")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_CurB_PPBRESULT")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$225, DW_AT_name("CurC_PPBRESULT")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_CurC_PPBRESULT")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$226, DW_AT_name("Vdc_AdcResult")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_Vdc_AdcResult")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$227, DW_AT_name("pwmCompA")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_pwmCompA")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$228, DW_AT_name("pwmCompB")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_pwmCompB")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$229, DW_AT_name("pwmCompC")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_pwmCompC")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$230, DW_AT_name("clarke")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_clarke")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$231, DW_AT_name("park")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_park")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$232, DW_AT_name("ipark")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_ipark")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$233, DW_AT_name("pid_pos")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_pid_pos")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$234, DW_AT_name("pi_pos")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_pi_pos")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$235, DW_AT_name("pid_spd")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_pid_spd")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$236, DW_AT_name("cntlr_id")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_cntlr_id")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$237, DW_AT_name("cntlr_iq")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_cntlr_iq")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$238, DW_AT_name("FCL_Pars")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_FCL_Pars")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$239, DW_AT_name("svgen")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_svgen")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x10a]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$240, DW_AT_name("rc")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x11c]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$241, DW_AT_name("rg")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_rg")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$242, DW_AT_name("volt")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_volt")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$243, DW_AT_name("speed")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_speed")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x14e]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$244, DW_AT_name("qep")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_qep")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$245, DW_AT_name("drv8301")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_drv8301")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$246, DW_AT_name("drv8305")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_drv8305")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x17b]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$247, DW_AT_name("currentAs")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_currentAs")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x190]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$248, DW_AT_name("currentBs")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_currentBs")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x192]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$249, DW_AT_name("currentCs")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_currentCs")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x194]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$250, DW_AT_name("currentSenseScale")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_currentSenseScale")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x196]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$251, DW_AT_name("T")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_T")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x198]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$252, DW_AT_name("Speed0")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_Speed0")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x19a]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$253, DW_AT_name("SFRA_noiseD")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_SFRA_noiseD")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x19c]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$254, DW_AT_name("SFRA_noiseQ")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_SFRA_noiseQ")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x19e]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$255, DW_AT_name("SFRA_noiseW")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_SFRA_noiseW")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$256, DW_AT_name("BaseInverterVoltage")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_BaseInverterVoltage")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a2]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$257, DW_AT_name("BaseMotorVoltage")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_BaseMotorVoltage")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a4]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$258, DW_AT_name("BaseInverterCurrent")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_BaseInverterCurrent")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a6]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$259, DW_AT_name("BaseMotorCurrent")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_BaseMotorCurrent")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a8]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$260, DW_AT_name("BaseFrequency")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_BaseFrequency")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x1aa]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("offset_shntA")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_offset_shntA")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ac]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("offset_shntB")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_offset_shntB")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ae]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("offset_shntC")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_offset_shntC")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("VdTesting")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_VdTesting")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b2]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("VqTesting")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_VqTesting")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b4]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("IdRef")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_IdRef")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b6]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("IqRef")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_IqRef")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b8]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("SpeedRef")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_SpeedRef")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ba]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("angMax")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_angMax")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1bc]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("ElecTheta")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_ElecTheta")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1be]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("MechTheta")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_MechTheta")
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$272, DW_AT_name("alignCntr")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_alignCntr")
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c2]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$273, DW_AT_name("alignCnt")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_alignCnt")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c4]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$274, DW_AT_name("lsw")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_lsw")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c6]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$275, DW_AT_name("RunMotor")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_RunMotor")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c7]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$276, DW_AT_name("TripFlagDMC")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_TripFlagDMC")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c8]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$277, DW_AT_name("clearTripFlagDMC")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_clearTripFlagDMC")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c9]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$278, DW_AT_name("SpeedLoopPrescaler")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_SpeedLoopPrescaler")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ca]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$279, DW_AT_name("SpeedLoopCount")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_SpeedLoopCount")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cb]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$280, DW_AT_name("PosSenseReverse")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_PosSenseReverse")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cc]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$281, DW_AT_name("newCmdDRV")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_newCmdDRV")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1cd]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97

$C$DW$T$338	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$338, DW_AT_name("MOTOR_VARS")
	.dwattr $C$DW$T$338, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$338, DW_AT_language(DW_LANG_C)

$C$DW$T$339	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$339, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$T$339, DW_AT_address_class(0x20)

$C$DW$282	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$339)

$C$DW$T$340	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$340, DW_AT_type(*$C$DW$282)


$C$DW$T$98	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$283, DW_AT_name("all")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$284, DW_AT_name("bit")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$98

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("DRV8301_STATUS_REG_1")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)


$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$285, DW_AT_name("all")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$286, DW_AT_name("bit")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$99

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("DRV8301_STATUS_REG_2")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)


$C$DW$T$100	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x01)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$287, DW_AT_name("all")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$288, DW_AT_name("bit")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$100

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("DRV8301_CONTROL_REG_1")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)


$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$289, DW_AT_name("all")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$290, DW_AT_name("bit")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$101

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("DRV8301_CONTROL_REG_2")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)


$C$DW$T$102	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$291, DW_AT_name("all")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$292, DW_AT_name("bit")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$102

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("DRV8305_WWD_REG")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)


$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$293, DW_AT_name("all")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$294, DW_AT_name("bit")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$103

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("DRV8305_OV_VDS_FAULTS_REG")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)


$C$DW$T$104	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$295, DW_AT_name("all")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$296, DW_AT_name("bit")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$104

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("DRV8305_IC_FAULTS_REG")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)


$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$297, DW_AT_name("all")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$298, DW_AT_name("bit")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$105

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("DRV8305_GD_VGS_FAULTS_REG")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)


$C$DW$T$106	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$299, DW_AT_name("all")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$300, DW_AT_name("bit")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$106

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("DRV8305_HS_GATE_DRIVER_CNTRL_REG")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)


$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$301, DW_AT_name("all")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$302, DW_AT_name("bit")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$107

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("DRV8305_LS_GATE_DRIVER_CNTRL_REG")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)


$C$DW$T$108	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$303, DW_AT_name("all")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$304, DW_AT_name("bit")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$108

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("DRV8305_GD_CNTRL_REG")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)


$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$305, DW_AT_name("all")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$306, DW_AT_name("bit")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$109

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("DRV8305_IC_OPS_REG")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)


$C$DW$T$110	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$307, DW_AT_name("all")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$308, DW_AT_name("bit")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$110

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("DRV8305_SHUNT_AMP_CNTRL_REG")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)


$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$309, DW_AT_name("all")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$210)
	.dwattr $C$DW$310, DW_AT_name("bit")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$111

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("DRV8305_VREG_CNTRL_REG")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)


$C$DW$T$112	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$311, DW_AT_name("all")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$312, DW_AT_name("bit")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$112

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("DRV8305_VDS_SNS_CNTRL_REG")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)


$C$DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$113, DW_AT_name("AQCSFRC_BITS")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$313, DW_AT_name("CSFA")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_CSFA")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$313, DW_AT_bit_size(0x02)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$314, DW_AT_name("CSFB")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_CSFB")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$314, DW_AT_bit_size(0x02)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$315, DW_AT_name("rsvd1")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$315, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$113


$C$DW$T$114	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$114, DW_AT_name("AQCSFRC_REG")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$316, DW_AT_name("all")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$317, DW_AT_name("bit")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$114


$C$DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$115, DW_AT_name("AQCTLA2_BITS")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$318, DW_AT_name("T1U")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_T1U")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$318, DW_AT_bit_size(0x02)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$319, DW_AT_name("T1D")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_T1D")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$319, DW_AT_bit_size(0x02)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$320, DW_AT_name("T2U")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_T2U")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$320, DW_AT_bit_size(0x02)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$321, DW_AT_name("T2D")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_T2D")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$321, DW_AT_bit_size(0x02)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$322, DW_AT_name("rsvd1")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$322, DW_AT_bit_size(0x08)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$115


$C$DW$T$116	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$116, DW_AT_name("AQCTLA2_REG")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x01)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$323, DW_AT_name("all")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$324, DW_AT_name("bit")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$116


$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_name("AQCTLA_BITS")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x01)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$325, DW_AT_name("ZRO")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_ZRO")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$325, DW_AT_bit_size(0x02)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$326, DW_AT_name("PRD")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$326, DW_AT_bit_size(0x02)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$327, DW_AT_name("CAU")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_CAU")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$327, DW_AT_bit_size(0x02)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$328, DW_AT_name("CAD")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_CAD")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$328, DW_AT_bit_size(0x02)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$329, DW_AT_name("CBU")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_CBU")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$329, DW_AT_bit_size(0x02)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$330, DW_AT_name("CBD")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_CBD")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$330, DW_AT_bit_size(0x02)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$331, DW_AT_name("rsvd1")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$331, DW_AT_bit_size(0x04)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$117


$C$DW$T$118	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$118, DW_AT_name("AQCTLA_REG")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x01)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$332, DW_AT_name("all")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$333, DW_AT_name("bit")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$118


$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("AQCTLB2_BITS")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x01)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$334, DW_AT_name("T1U")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_T1U")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$334, DW_AT_bit_size(0x02)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$335, DW_AT_name("T1D")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_T1D")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$335, DW_AT_bit_size(0x02)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$336, DW_AT_name("T2U")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_T2U")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$336, DW_AT_bit_size(0x02)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$337, DW_AT_name("T2D")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_T2D")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$337, DW_AT_bit_size(0x02)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$338, DW_AT_name("rsvd1")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$338, DW_AT_bit_size(0x08)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$119


$C$DW$T$120	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$120, DW_AT_name("AQCTLB2_REG")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x01)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$339, DW_AT_name("all")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$340, DW_AT_name("bit")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$120


$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("AQCTLB_BITS")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x01)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$341, DW_AT_name("ZRO")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_ZRO")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$341, DW_AT_bit_size(0x02)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$342, DW_AT_name("PRD")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$342, DW_AT_bit_size(0x02)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$343, DW_AT_name("CAU")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_CAU")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$343, DW_AT_bit_size(0x02)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$344, DW_AT_name("CAD")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_CAD")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$344, DW_AT_bit_size(0x02)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$345, DW_AT_name("CBU")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_CBU")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$345, DW_AT_bit_size(0x02)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$346, DW_AT_name("CBD")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_CBD")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$346, DW_AT_bit_size(0x02)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$347, DW_AT_name("rsvd1")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$347, DW_AT_bit_size(0x04)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$121


$C$DW$T$122	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$122, DW_AT_name("AQCTLB_REG")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x01)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$348, DW_AT_name("all")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$349, DW_AT_name("bit")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$122


$C$DW$T$123	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$123, DW_AT_name("AQCTL_BITS")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x01)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$350, DW_AT_name("LDAQAMODE")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_LDAQAMODE")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$350, DW_AT_bit_size(0x02)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$351, DW_AT_name("LDAQBMODE")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_LDAQBMODE")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$351, DW_AT_bit_size(0x02)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$352, DW_AT_name("SHDWAQAMODE")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_SHDWAQAMODE")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$353, DW_AT_name("rsvd1")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$354, DW_AT_name("SHDWAQBMODE")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_SHDWAQBMODE")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$355, DW_AT_name("rsvd2")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$356, DW_AT_name("LDAQASYNC")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_LDAQASYNC")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$356, DW_AT_bit_size(0x02)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$357, DW_AT_name("LDAQBSYNC")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_LDAQBSYNC")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$357, DW_AT_bit_size(0x02)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$358, DW_AT_name("rsvd3")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$358, DW_AT_bit_size(0x04)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$123


$C$DW$T$124	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$124, DW_AT_name("AQCTL_REG")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x01)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$359, DW_AT_name("all")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$360, DW_AT_name("bit")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$124


$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("AQSFRC_BITS")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$361, DW_AT_name("ACTSFA")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_ACTSFA")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$361, DW_AT_bit_size(0x02)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$362, DW_AT_name("OTSFA")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_OTSFA")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$363, DW_AT_name("ACTSFB")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_ACTSFB")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$363, DW_AT_bit_size(0x02)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$364, DW_AT_name("OTSFB")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_OTSFB")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$365, DW_AT_name("RLDCSF")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_RLDCSF")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$365, DW_AT_bit_size(0x02)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$366, DW_AT_name("rsvd1")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$366, DW_AT_bit_size(0x08)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$125


$C$DW$T$126	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$126, DW_AT_name("AQSFRC_REG")
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x01)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$367, DW_AT_name("all")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$368, DW_AT_name("bit")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$126


$C$DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$127, DW_AT_name("AQTSRCSEL_BITS")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x01)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$369, DW_AT_name("T1SEL")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_T1SEL")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$369, DW_AT_bit_size(0x04)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$370, DW_AT_name("T2SEL")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_T2SEL")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$370, DW_AT_bit_size(0x04)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$371, DW_AT_name("rsvd1")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$371, DW_AT_bit_size(0x08)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$127


$C$DW$T$128	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$128, DW_AT_name("AQTSRCSEL_REG")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$372, DW_AT_name("all")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$373, DW_AT_name("bit")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$128


$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("CMPA_BITS")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x02)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$374, DW_AT_name("CMPAHR")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_CMPAHR")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$374, DW_AT_bit_size(0x10)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$375, DW_AT_name("CMPA")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_CMPA")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$375, DW_AT_bit_size(0x10)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$129


$C$DW$T$130	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$130, DW_AT_name("CMPA_REG")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x02)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$376, DW_AT_name("all")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$377, DW_AT_name("bit")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$130


$C$DW$T$131	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$131, DW_AT_name("CMPB_BITS")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x02)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$378, DW_AT_name("CMPBHR")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_CMPBHR")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$378, DW_AT_bit_size(0x10)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$379, DW_AT_name("CMPB")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_CMPB")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$379, DW_AT_bit_size(0x10)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$131


$C$DW$T$132	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$132, DW_AT_name("CMPB_REG")
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x02)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$380, DW_AT_name("all")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$381, DW_AT_name("bit")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$132


$C$DW$T$133	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$133, DW_AT_name("CMPCTL2_BITS")
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x01)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$382, DW_AT_name("LOADCMODE")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_LOADCMODE")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$382, DW_AT_bit_size(0x02)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$383, DW_AT_name("LOADDMODE")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_LOADDMODE")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$383, DW_AT_bit_size(0x02)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$384, DW_AT_name("SHDWCMODE")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_SHDWCMODE")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$385, DW_AT_name("rsvd1")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$386, DW_AT_name("SHDWDMODE")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_SHDWDMODE")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$387, DW_AT_name("rsvd2")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$387, DW_AT_bit_size(0x03)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$388, DW_AT_name("LOADCSYNC")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_LOADCSYNC")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$388, DW_AT_bit_size(0x02)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$389, DW_AT_name("LOADDSYNC")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_LOADDSYNC")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$389, DW_AT_bit_size(0x02)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$390, DW_AT_name("rsvd3")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$390, DW_AT_bit_size(0x02)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$133


$C$DW$T$134	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$134, DW_AT_name("CMPCTL2_REG")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x01)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$391, DW_AT_name("all")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$392, DW_AT_name("bit")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$134


$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("CMPCTL_BITS")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x01)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$393, DW_AT_name("LOADAMODE")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_LOADAMODE")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$393, DW_AT_bit_size(0x02)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$394, DW_AT_name("LOADBMODE")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_LOADBMODE")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$394, DW_AT_bit_size(0x02)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$395, DW_AT_name("SHDWAMODE")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_SHDWAMODE")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$396, DW_AT_name("rsvd1")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$397, DW_AT_name("SHDWBMODE")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_SHDWBMODE")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$398, DW_AT_name("rsvd2")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$399, DW_AT_name("SHDWAFULL")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_SHDWAFULL")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$400, DW_AT_name("SHDWBFULL")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_SHDWBFULL")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$401, DW_AT_name("LOADASYNC")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_LOADASYNC")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$401, DW_AT_bit_size(0x02)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$402, DW_AT_name("LOADBSYNC")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_LOADBSYNC")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$402, DW_AT_bit_size(0x02)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$403, DW_AT_name("rsvd3")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$403, DW_AT_bit_size(0x02)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$135


$C$DW$T$136	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$136, DW_AT_name("CMPCTL_REG")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x01)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$404, DW_AT_name("all")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$405, DW_AT_name("bit")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$136


$C$DW$T$138	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$138, DW_AT_name("CMPSS_REGS")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x20)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$406, DW_AT_name("COMPCTL")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_COMPCTL")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$407, DW_AT_name("COMPHYSCTL")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_COMPHYSCTL")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$408, DW_AT_name("COMPSTS")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_COMPSTS")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$409, DW_AT_name("COMPSTSCLR")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_COMPSTSCLR")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$410, DW_AT_name("COMPDACCTL")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_COMPDACCTL")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$411, DW_AT_name("rsvd1")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$412, DW_AT_name("DACHVALS")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_DACHVALS")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$413, DW_AT_name("DACHVALA")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_DACHVALA")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$414, DW_AT_name("RAMPMAXREFA")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_RAMPMAXREFA")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$415, DW_AT_name("rsvd2")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$416, DW_AT_name("RAMPMAXREFS")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_RAMPMAXREFS")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$417, DW_AT_name("rsvd3")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$418, DW_AT_name("RAMPDECVALA")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_RAMPDECVALA")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$419, DW_AT_name("rsvd4")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$420, DW_AT_name("RAMPDECVALS")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_RAMPDECVALS")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$421, DW_AT_name("rsvd5")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$422, DW_AT_name("RAMPSTS")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_RAMPSTS")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$423, DW_AT_name("rsvd6")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$424, DW_AT_name("DACLVALS")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_DACLVALS")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$425, DW_AT_name("DACLVALA")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_DACLVALA")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$279)
	.dwattr $C$DW$426, DW_AT_name("RAMPDLYA")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_RAMPDLYA")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$281)
	.dwattr $C$DW$427, DW_AT_name("RAMPDLYS")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_RAMPDLYS")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$428, DW_AT_name("CTRIPLFILCTL")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_CTRIPLFILCTL")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$429, DW_AT_name("CTRIPLFILCLKCTL")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_CTRIPLFILCLKCTL")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$430, DW_AT_name("CTRIPHFILCTL")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_CTRIPHFILCTL")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$431, DW_AT_name("CTRIPHFILCLKCTL")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_CTRIPHFILCLKCTL")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$432, DW_AT_name("COMPLOCK")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_COMPLOCK")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$433, DW_AT_name("rsvd7")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$138

$C$DW$434	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$138)

$C$DW$T$67	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$434)

$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)


$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("COMPCTL_BITS")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x01)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$435, DW_AT_name("COMPHSOURCE")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_COMPHSOURCE")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$436, DW_AT_name("COMPHINV")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_COMPHINV")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$437, DW_AT_name("CTRIPHSEL")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_CTRIPHSEL")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$437, DW_AT_bit_size(0x02)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$438, DW_AT_name("CTRIPOUTHSEL")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_CTRIPOUTHSEL")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$438, DW_AT_bit_size(0x02)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$439, DW_AT_name("ASYNCHEN")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_ASYNCHEN")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$440, DW_AT_name("rsvd1")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$441, DW_AT_name("COMPLSOURCE")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_COMPLSOURCE")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$442, DW_AT_name("COMPLINV")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_COMPLINV")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$443, DW_AT_name("CTRIPLSEL")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_CTRIPLSEL")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$443, DW_AT_bit_size(0x02)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$444, DW_AT_name("CTRIPOUTLSEL")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_CTRIPOUTLSEL")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$444, DW_AT_bit_size(0x02)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$445, DW_AT_name("ASYNCLEN")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_ASYNCLEN")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$446, DW_AT_name("COMPDACE")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_COMPDACE")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$139


$C$DW$T$140	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$140, DW_AT_name("COMPCTL_REG")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$447, DW_AT_name("all")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$448, DW_AT_name("bit")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$140


$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("COMPDACCTL_BITS")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$449, DW_AT_name("DACSOURCE")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_DACSOURCE")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$450, DW_AT_name("RAMPSOURCE")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_RAMPSOURCE")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$450, DW_AT_bit_size(0x04)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$451, DW_AT_name("SELREF")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_SELREF")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$452, DW_AT_name("RAMPLOADSEL")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_RAMPLOADSEL")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$453, DW_AT_name("SWLOADSEL")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_SWLOADSEL")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$454, DW_AT_name("rsvd1")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$454, DW_AT_bit_size(0x06)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$455, DW_AT_name("FREESOFT")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_FREESOFT")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$455, DW_AT_bit_size(0x02)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$141


$C$DW$T$142	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$142, DW_AT_name("COMPDACCTL_REG")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x01)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$456, DW_AT_name("all")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$457, DW_AT_name("bit")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$142


$C$DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$143, DW_AT_name("COMPHYSCTL_BITS")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x01)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$458, DW_AT_name("COMPHYS")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_COMPHYS")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$458, DW_AT_bit_size(0x03)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$459, DW_AT_name("rsvd1")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$459, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$143


$C$DW$T$144	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$144, DW_AT_name("COMPHYSCTL_REG")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x01)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$460, DW_AT_name("all")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$461, DW_AT_name("bit")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$144


$C$DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$145, DW_AT_name("COMPLOCK_BITS")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x01)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$462, DW_AT_name("COMPCTL")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_COMPCTL")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$463, DW_AT_name("COMPHYSCTL")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_COMPHYSCTL")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$464, DW_AT_name("DACCTL")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_DACCTL")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$465, DW_AT_name("CTRIP")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_CTRIP")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$466, DW_AT_name("rsvd1")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$467, DW_AT_name("rsvd2")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$467, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$145


$C$DW$T$146	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$146, DW_AT_name("COMPLOCK_REG")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x01)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$468, DW_AT_name("all")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$469, DW_AT_name("bit")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$146


$C$DW$T$147	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$147, DW_AT_name("COMPSTSCLR_BITS")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x01)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$470, DW_AT_name("rsvd1")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$471, DW_AT_name("HLATCHCLR")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_HLATCHCLR")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$472, DW_AT_name("HSYNCCLREN")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_HSYNCCLREN")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$473, DW_AT_name("rsvd2")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$473, DW_AT_bit_size(0x06)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$474, DW_AT_name("LLATCHCLR")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_LLATCHCLR")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$475, DW_AT_name("LSYNCCLREN")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_LSYNCCLREN")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$476, DW_AT_name("rsvd3")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$476, DW_AT_bit_size(0x05)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$147


$C$DW$T$148	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$148, DW_AT_name("COMPSTSCLR_REG")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x01)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$477, DW_AT_name("all")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$478, DW_AT_name("bit")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$148


$C$DW$T$149	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$149, DW_AT_name("COMPSTS_BITS")
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x01)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$479, DW_AT_name("COMPHSTS")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_COMPHSTS")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$480, DW_AT_name("COMPHLATCH")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_COMPHLATCH")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$481, DW_AT_name("rsvd1")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$481, DW_AT_bit_size(0x06)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$482, DW_AT_name("COMPLSTS")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_COMPLSTS")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$483, DW_AT_name("COMPLLATCH")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_COMPLLATCH")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$484, DW_AT_name("rsvd2")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$484, DW_AT_bit_size(0x06)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$149


$C$DW$T$150	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$150, DW_AT_name("COMPSTS_REG")
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x01)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$485, DW_AT_name("all")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$486, DW_AT_name("bit")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$150


$C$DW$T$151	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$151, DW_AT_name("CTRIPHFILCLKCTL_BITS")
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x01)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$487, DW_AT_name("CLKPRESCALE")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_CLKPRESCALE")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$487, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$488, DW_AT_name("rsvd1")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$488, DW_AT_bit_size(0x06)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$151


$C$DW$T$152	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$152, DW_AT_name("CTRIPHFILCLKCTL_REG")
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x01)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$489, DW_AT_name("all")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$490, DW_AT_name("bit")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$152


$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("CTRIPHFILCTL_BITS")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x01)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$491, DW_AT_name("rsvd1")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$491, DW_AT_bit_size(0x04)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$492, DW_AT_name("SAMPWIN")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_SAMPWIN")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$492, DW_AT_bit_size(0x05)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$493, DW_AT_name("THRESH")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_THRESH")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$493, DW_AT_bit_size(0x05)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$494, DW_AT_name("rsvd2")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$495, DW_AT_name("FILINIT")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_FILINIT")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$153


$C$DW$T$154	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$154, DW_AT_name("CTRIPHFILCTL_REG")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x01)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$496, DW_AT_name("all")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$497, DW_AT_name("bit")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$154


$C$DW$T$155	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$155, DW_AT_name("CTRIPLFILCLKCTL_BITS")
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x01)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$498, DW_AT_name("CLKPRESCALE")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_CLKPRESCALE")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$498, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$499, DW_AT_name("rsvd1")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$499, DW_AT_bit_size(0x06)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$155


$C$DW$T$156	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$156, DW_AT_name("CTRIPLFILCLKCTL_REG")
	.dwattr $C$DW$T$156, DW_AT_byte_size(0x01)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$500, DW_AT_name("all")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$501, DW_AT_name("bit")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$156


$C$DW$T$157	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$157, DW_AT_name("CTRIPLFILCTL_BITS")
	.dwattr $C$DW$T$157, DW_AT_byte_size(0x01)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$502, DW_AT_name("rsvd1")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$502, DW_AT_bit_size(0x04)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$503, DW_AT_name("SAMPWIN")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_SAMPWIN")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$503, DW_AT_bit_size(0x05)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$504, DW_AT_name("THRESH")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_THRESH")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$504, DW_AT_bit_size(0x05)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$505, DW_AT_name("rsvd2")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$506, DW_AT_name("FILINIT")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_FILINIT")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$157


$C$DW$T$158	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$158, DW_AT_name("CTRIPLFILCTL_REG")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x01)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$507, DW_AT_name("all")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$508, DW_AT_name("bit")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$158


$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("DACHVALA_BITS")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x01)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$509, DW_AT_name("DACVAL")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_DACVAL")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$509, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$510, DW_AT_name("rsvd1")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$510, DW_AT_bit_size(0x04)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$159


$C$DW$T$160	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$160, DW_AT_name("DACHVALA_REG")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x01)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$511, DW_AT_name("all")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$512, DW_AT_name("bit")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$160


$C$DW$T$161	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$161, DW_AT_name("DACHVALS_BITS")
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x01)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$513, DW_AT_name("DACVAL")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_DACVAL")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$513, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$514, DW_AT_name("rsvd1")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$514, DW_AT_bit_size(0x04)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$161


$C$DW$T$162	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$162, DW_AT_name("DACHVALS_REG")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x01)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$515, DW_AT_name("all")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$516, DW_AT_name("bit")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$162


$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("DACLVALA_BITS")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x01)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$517, DW_AT_name("DACVAL")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_DACVAL")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$517, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$518, DW_AT_name("rsvd1")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$518, DW_AT_bit_size(0x04)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$163


$C$DW$T$164	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$164, DW_AT_name("DACLVALA_REG")
	.dwattr $C$DW$T$164, DW_AT_byte_size(0x01)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$519, DW_AT_name("all")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$520, DW_AT_name("bit")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$164


$C$DW$T$165	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$165, DW_AT_name("DACLVALS_BITS")
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x01)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$521, DW_AT_name("DACVAL")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_DACVAL")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$521, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$522, DW_AT_name("rsvd1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$522, DW_AT_bit_size(0x04)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$165


$C$DW$T$166	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$166, DW_AT_name("DACLVALS_REG")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x01)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$523, DW_AT_name("all")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$524, DW_AT_name("bit")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$166


$C$DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$167, DW_AT_name("DBCTL2_BITS")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x01)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$525, DW_AT_name("LOADDBCTLMODE")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_LOADDBCTLMODE")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$525, DW_AT_bit_size(0x02)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$526, DW_AT_name("SHDWDBCTLMODE")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_SHDWDBCTLMODE")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$527, DW_AT_name("rsvd1")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$527, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$167


$C$DW$T$168	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$168, DW_AT_name("DBCTL2_REG")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x01)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$528, DW_AT_name("all")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$529, DW_AT_name("bit")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$168


$C$DW$T$169	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$169, DW_AT_name("DBCTL_BITS")
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x01)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$530, DW_AT_name("OUT_MODE")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_OUT_MODE")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$530, DW_AT_bit_size(0x02)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$531, DW_AT_name("POLSEL")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_POLSEL")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$531, DW_AT_bit_size(0x02)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$532, DW_AT_name("IN_MODE")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_IN_MODE")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$532, DW_AT_bit_size(0x02)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$533, DW_AT_name("LOADREDMODE")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_LOADREDMODE")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$533, DW_AT_bit_size(0x02)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$534, DW_AT_name("LOADFEDMODE")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_LOADFEDMODE")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$534, DW_AT_bit_size(0x02)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$535, DW_AT_name("SHDWDBREDMODE")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_SHDWDBREDMODE")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$536, DW_AT_name("SHDWDBFEDMODE")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_SHDWDBFEDMODE")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$537, DW_AT_name("OUTSWAP")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_OUTSWAP")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$537, DW_AT_bit_size(0x02)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$538, DW_AT_name("DEDB_MODE")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_DEDB_MODE")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$539, DW_AT_name("HALFCYCLE")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_HALFCYCLE")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$169


$C$DW$T$170	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$170, DW_AT_name("DBCTL_REG")
	.dwattr $C$DW$T$170, DW_AT_byte_size(0x01)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$540, DW_AT_name("all")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$541, DW_AT_name("bit")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$170


$C$DW$T$171	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$171, DW_AT_name("DBFEDHR_BITS")
	.dwattr $C$DW$T$171, DW_AT_byte_size(0x01)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$542, DW_AT_name("rsvd1")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$543, DW_AT_name("rsvd2")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$543, DW_AT_bit_size(0x07)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$544, DW_AT_name("rsvd3")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$545, DW_AT_name("DBFEDHR")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_DBFEDHR")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$545, DW_AT_bit_size(0x07)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$171


$C$DW$T$172	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$172, DW_AT_name("DBFEDHR_REG")
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x01)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$546, DW_AT_name("all")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$547, DW_AT_name("bit")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$172


$C$DW$T$173	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$173, DW_AT_name("DBFED_BITS")
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x01)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$548, DW_AT_name("DBFED")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_DBFED")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$548, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$549, DW_AT_name("rsvd1")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$549, DW_AT_bit_size(0x02)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$173


$C$DW$T$174	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$174, DW_AT_name("DBFED_REG")
	.dwattr $C$DW$T$174, DW_AT_byte_size(0x01)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$550, DW_AT_name("all")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$551, DW_AT_name("bit")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$174


$C$DW$T$175	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$175, DW_AT_name("DBREDHR_BITS")
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x01)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$552, DW_AT_name("rsvd1")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$553, DW_AT_name("rsvd2")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$553, DW_AT_bit_size(0x07)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$554, DW_AT_name("rsvd3")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$555, DW_AT_name("DBREDHR")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_DBREDHR")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$555, DW_AT_bit_size(0x07)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$175


$C$DW$T$176	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$176, DW_AT_name("DBREDHR_REG")
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x01)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$556, DW_AT_name("all")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$557, DW_AT_name("bit")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$176


$C$DW$T$177	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$177, DW_AT_name("DBRED_BITS")
	.dwattr $C$DW$T$177, DW_AT_byte_size(0x01)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$558, DW_AT_name("DBRED")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_DBRED")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$558, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$559, DW_AT_name("rsvd1")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$559, DW_AT_bit_size(0x02)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$177


$C$DW$T$178	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$178, DW_AT_name("DBRED_REG")
	.dwattr $C$DW$T$178, DW_AT_byte_size(0x01)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$560, DW_AT_name("all")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$561, DW_AT_name("bit")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$178


$C$DW$T$179	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$179, DW_AT_name("DCACTL_BITS")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x01)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$562, DW_AT_name("EVT1SRCSEL")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_EVT1SRCSEL")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$563, DW_AT_name("EVT1FRCSYNCSEL")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_EVT1FRCSYNCSEL")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$564, DW_AT_name("EVT1SOCE")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_EVT1SOCE")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$565, DW_AT_name("EVT1SYNCE")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_EVT1SYNCE")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$566, DW_AT_name("rsvd1")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$566, DW_AT_bit_size(0x04)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$567, DW_AT_name("EVT2SRCSEL")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_EVT2SRCSEL")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$568, DW_AT_name("EVT2FRCSYNCSEL")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_EVT2FRCSYNCSEL")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$569, DW_AT_name("rsvd2")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$569, DW_AT_bit_size(0x06)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$179


$C$DW$T$180	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$180, DW_AT_name("DCACTL_REG")
	.dwattr $C$DW$T$180, DW_AT_byte_size(0x01)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$570, DW_AT_name("all")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$571, DW_AT_name("bit")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$180


$C$DW$T$181	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$181, DW_AT_name("DCAHTRIPSEL_BITS")
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x01)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$572, DW_AT_name("TRIPINPUT1")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_TRIPINPUT1")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$573, DW_AT_name("TRIPINPUT2")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_TRIPINPUT2")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$574, DW_AT_name("TRIPINPUT3")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_TRIPINPUT3")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$575, DW_AT_name("TRIPINPUT4")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_TRIPINPUT4")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$576, DW_AT_name("TRIPINPUT5")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_TRIPINPUT5")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$577, DW_AT_name("TRIPINPUT6")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_TRIPINPUT6")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$578, DW_AT_name("TRIPINPUT7")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_TRIPINPUT7")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$579, DW_AT_name("TRIPINPUT8")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_TRIPINPUT8")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$580, DW_AT_name("TRIPINPUT9")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_TRIPINPUT9")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$581, DW_AT_name("TRIPINPUT10")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_TRIPINPUT10")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$582, DW_AT_name("TRIPINPUT11")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_TRIPINPUT11")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$583, DW_AT_name("TRIPINPUT12")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_TRIPINPUT12")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$584, DW_AT_name("rsvd1")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$585, DW_AT_name("TRIPINPUT14")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_TRIPINPUT14")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$586, DW_AT_name("TRIPINPUT15")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_TRIPINPUT15")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$587, DW_AT_name("rsvd2")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$181


$C$DW$T$182	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$182, DW_AT_name("DCAHTRIPSEL_REG")
	.dwattr $C$DW$T$182, DW_AT_byte_size(0x01)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$588, DW_AT_name("all")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$589, DW_AT_name("bit")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$182


$C$DW$T$183	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$183, DW_AT_name("DCALTRIPSEL_BITS")
	.dwattr $C$DW$T$183, DW_AT_byte_size(0x01)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$590, DW_AT_name("TRIPINPUT1")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_TRIPINPUT1")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$591, DW_AT_name("TRIPINPUT2")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_TRIPINPUT2")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$592, DW_AT_name("TRIPINPUT3")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_TRIPINPUT3")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$593, DW_AT_name("TRIPINPUT4")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_TRIPINPUT4")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$594, DW_AT_name("TRIPINPUT5")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_TRIPINPUT5")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$595, DW_AT_name("TRIPINPUT6")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_TRIPINPUT6")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$596, DW_AT_name("TRIPINPUT7")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_TRIPINPUT7")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$597, DW_AT_name("TRIPINPUT8")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_TRIPINPUT8")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$598, DW_AT_name("TRIPINPUT9")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_TRIPINPUT9")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$599, DW_AT_name("TRIPINPUT10")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_TRIPINPUT10")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$600, DW_AT_name("TRIPINPUT11")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_TRIPINPUT11")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$601, DW_AT_name("TRIPINPUT12")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_TRIPINPUT12")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$602, DW_AT_name("rsvd1")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$603, DW_AT_name("TRIPINPUT14")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_TRIPINPUT14")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$604, DW_AT_name("TRIPINPUT15")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_TRIPINPUT15")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$605, DW_AT_name("rsvd2")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$183


$C$DW$T$184	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$184, DW_AT_name("DCALTRIPSEL_REG")
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x01)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$606, DW_AT_name("all")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$607, DW_AT_name("bit")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$184


$C$DW$T$185	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$185, DW_AT_name("DCBCTL_BITS")
	.dwattr $C$DW$T$185, DW_AT_byte_size(0x01)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$608, DW_AT_name("EVT1SRCSEL")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_EVT1SRCSEL")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$609, DW_AT_name("EVT1FRCSYNCSEL")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_EVT1FRCSYNCSEL")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$610, DW_AT_name("EVT1SOCE")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_EVT1SOCE")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$611, DW_AT_name("EVT1SYNCE")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_EVT1SYNCE")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$612, DW_AT_name("rsvd1")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$612, DW_AT_bit_size(0x04)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$613, DW_AT_name("EVT2SRCSEL")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_EVT2SRCSEL")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$614, DW_AT_name("EVT2FRCSYNCSEL")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_EVT2FRCSYNCSEL")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$615, DW_AT_name("rsvd2")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$615, DW_AT_bit_size(0x06)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$185


$C$DW$T$186	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$186, DW_AT_name("DCBCTL_REG")
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x01)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$616, DW_AT_name("all")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$617, DW_AT_name("bit")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$186


$C$DW$T$187	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$187, DW_AT_name("DCBHTRIPSEL_BITS")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x01)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$618, DW_AT_name("TRIPINPUT1")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_TRIPINPUT1")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$619, DW_AT_name("TRIPINPUT2")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_TRIPINPUT2")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$620, DW_AT_name("TRIPINPUT3")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_TRIPINPUT3")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$621, DW_AT_name("TRIPINPUT4")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_TRIPINPUT4")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$622, DW_AT_name("TRIPINPUT5")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_TRIPINPUT5")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$623, DW_AT_name("TRIPINPUT6")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_TRIPINPUT6")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$624, DW_AT_name("TRIPINPUT7")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_TRIPINPUT7")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$625, DW_AT_name("TRIPINPUT8")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_TRIPINPUT8")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$626, DW_AT_name("TRIPINPUT9")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_TRIPINPUT9")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$627, DW_AT_name("TRIPINPUT10")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_TRIPINPUT10")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$628, DW_AT_name("TRIPINPUT11")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_TRIPINPUT11")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$629, DW_AT_name("TRIPINPUT12")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_TRIPINPUT12")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$630, DW_AT_name("rsvd1")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$631, DW_AT_name("TRIPINPUT14")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_TRIPINPUT14")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$632, DW_AT_name("TRIPINPUT15")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_TRIPINPUT15")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$633, DW_AT_name("rsvd2")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$187


$C$DW$T$188	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$188, DW_AT_name("DCBHTRIPSEL_REG")
	.dwattr $C$DW$T$188, DW_AT_byte_size(0x01)
$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$634, DW_AT_name("all")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$635, DW_AT_name("bit")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$188


$C$DW$T$189	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$189, DW_AT_name("DCBLTRIPSEL_BITS")
	.dwattr $C$DW$T$189, DW_AT_byte_size(0x01)
$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$636, DW_AT_name("TRIPINPUT1")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_TRIPINPUT1")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$637, DW_AT_name("TRIPINPUT2")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_TRIPINPUT2")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$638, DW_AT_name("TRIPINPUT3")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_TRIPINPUT3")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$639, DW_AT_name("TRIPINPUT4")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_TRIPINPUT4")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$640, DW_AT_name("TRIPINPUT5")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_TRIPINPUT5")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$641, DW_AT_name("TRIPINPUT6")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_TRIPINPUT6")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$642, DW_AT_name("TRIPINPUT7")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_TRIPINPUT7")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$643, DW_AT_name("TRIPINPUT8")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_TRIPINPUT8")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$644, DW_AT_name("TRIPINPUT9")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_TRIPINPUT9")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$645, DW_AT_name("TRIPINPUT10")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_TRIPINPUT10")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$646, DW_AT_name("TRIPINPUT11")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_TRIPINPUT11")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$647, DW_AT_name("TRIPINPUT12")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_TRIPINPUT12")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$648, DW_AT_name("rsvd1")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$649, DW_AT_name("TRIPINPUT14")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_TRIPINPUT14")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$650, DW_AT_name("TRIPINPUT15")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_TRIPINPUT15")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$651, DW_AT_name("rsvd2")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$189


$C$DW$T$190	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$190, DW_AT_name("DCBLTRIPSEL_REG")
	.dwattr $C$DW$T$190, DW_AT_byte_size(0x01)
$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$652, DW_AT_name("all")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$653, DW_AT_name("bit")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$190


$C$DW$T$191	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$191, DW_AT_name("DCCAPCTL_BITS")
	.dwattr $C$DW$T$191, DW_AT_byte_size(0x01)
$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$654, DW_AT_name("CAPE")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_CAPE")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$655, DW_AT_name("SHDWMODE")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_SHDWMODE")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$656, DW_AT_name("rsvd1")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$656, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$657, DW_AT_name("CAPSTS")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_CAPSTS")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$658, DW_AT_name("CAPCLR")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_CAPCLR")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$659, DW_AT_name("CAPMODE")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_CAPMODE")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$191


$C$DW$T$192	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$192, DW_AT_name("DCCAPCTL_REG")
	.dwattr $C$DW$T$192, DW_AT_byte_size(0x01)
$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$660, DW_AT_name("all")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$661, DW_AT_name("bit")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$192


$C$DW$T$193	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$193, DW_AT_name("DCFCTL_BITS")
	.dwattr $C$DW$T$193, DW_AT_byte_size(0x01)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$662, DW_AT_name("SRCSEL")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_SRCSEL")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$662, DW_AT_bit_size(0x02)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$663, DW_AT_name("BLANKE")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_BLANKE")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$664, DW_AT_name("BLANKINV")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_BLANKINV")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$665, DW_AT_name("PULSESEL")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_PULSESEL")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$665, DW_AT_bit_size(0x02)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$666, DW_AT_name("rsvd1")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$667, DW_AT_name("rsvd2")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$668, DW_AT_name("rsvd3")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$668, DW_AT_bit_size(0x02)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$669, DW_AT_name("rsvd4")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$669, DW_AT_bit_size(0x03)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$670, DW_AT_name("rsvd5")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$670, DW_AT_bit_size(0x03)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$193


$C$DW$T$194	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$194, DW_AT_name("DCFCTL_REG")
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x01)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$671, DW_AT_name("all")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$672, DW_AT_name("bit")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$194


$C$DW$T$195	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$195, DW_AT_name("DCTRIPSEL_BITS")
	.dwattr $C$DW$T$195, DW_AT_byte_size(0x01)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$673, DW_AT_name("DCAHCOMPSEL")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_DCAHCOMPSEL")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$673, DW_AT_bit_size(0x04)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$674, DW_AT_name("DCALCOMPSEL")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_DCALCOMPSEL")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$674, DW_AT_bit_size(0x04)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$675, DW_AT_name("DCBHCOMPSEL")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_DCBHCOMPSEL")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$675, DW_AT_bit_size(0x04)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$676, DW_AT_name("DCBLCOMPSEL")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_DCBLCOMPSEL")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$676, DW_AT_bit_size(0x04)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$195


$C$DW$T$196	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$196, DW_AT_name("DCTRIPSEL_REG")
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x01)
$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$677, DW_AT_name("all")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$678, DW_AT_name("bit")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$196


$C$DW$T$197	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$197, DW_AT_name("DRV8301_CONTROL_REG_1_BITS")
	.dwattr $C$DW$T$197, DW_AT_byte_size(0x01)
$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$679, DW_AT_name("GATE_CURRENT")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_GATE_CURRENT")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$679, DW_AT_bit_size(0x02)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$680, DW_AT_name("GATE_RESET")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_GATE_RESET")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$681, DW_AT_name("PWM_MODE")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_PWM_MODE")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$682, DW_AT_name("OC_MODE")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_OC_MODE")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$682, DW_AT_bit_size(0x02)
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$683, DW_AT_name("OC_ADJ_SET")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_OC_ADJ_SET")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$683, DW_AT_bit_size(0x05)
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$684, DW_AT_name("Reserved")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$684, DW_AT_bit_size(0x05)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$197


$C$DW$T$198	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$198, DW_AT_name("DRV8301_CONTROL_REG_2_BITS")
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x01)
$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$685, DW_AT_name("OCTW_SET")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_OCTW_SET")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$685, DW_AT_bit_size(0x02)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$686, DW_AT_name("GAIN")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_GAIN")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$686, DW_AT_bit_size(0x02)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$687, DW_AT_name("DC_CAL_CH1")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_DC_CAL_CH1")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$688, DW_AT_name("DC_CAL_CH2")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_DC_CAL_CH2")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$689, DW_AT_name("OC_TOFF")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_OC_TOFF")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$690, DW_AT_name("Reserved")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$690, DW_AT_bit_size(0x09)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$198


$C$DW$T$199	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$199, DW_AT_name("DRV8301_STATUS_REG_1_BITS")
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x01)
$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$691, DW_AT_name("FETLC_OC")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_FETLC_OC")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$692, DW_AT_name("FETHC_OC")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_FETHC_OC")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$693, DW_AT_name("FETLB_OC")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_FETLB_OC")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$694, DW_AT_name("FETHB_OC")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_FETHB_OC")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$695, DW_AT_name("FETLA_OC")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_FETLA_OC")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$696, DW_AT_name("FETHA_OC")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_FETHA_OC")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$697, DW_AT_name("OTW")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_OTW")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$698, DW_AT_name("OTSD")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_OTSD")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$699, DW_AT_name("PVDD_UV")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_PVDD_UV")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$700, DW_AT_name("GVDD_UV")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_GVDD_UV")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$701, DW_AT_name("FAULT")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_FAULT")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$702, DW_AT_name("Reserved")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$702, DW_AT_bit_size(0x05)
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$199


$C$DW$T$200	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$200, DW_AT_name("DRV8301_STATUS_REG_2_BITS")
	.dwattr $C$DW$T$200, DW_AT_byte_size(0x01)
$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$703, DW_AT_name("DEVICE_ID")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_DEVICE_ID")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$703, DW_AT_bit_size(0x04)
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$704, DW_AT_name("Reserved1")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_Reserved1")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$704, DW_AT_bit_size(0x03)
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$705, DW_AT_name("GVDD_OV")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_GVDD_OV")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$706, DW_AT_name("Reserved2")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$706, DW_AT_bit_size(0x08)
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$200


$C$DW$T$201	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$201, DW_AT_name("DRV8305_GD_CNTRL_REG_BITS")
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x01)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$707, DW_AT_name("TVDS")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_TVDS")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$707, DW_AT_bit_size(0x02)
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$708, DW_AT_name("TBLANK")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_TBLANK")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$708, DW_AT_bit_size(0x02)
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$709, DW_AT_name("DEAD_TIME")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_DEAD_TIME")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$709, DW_AT_bit_size(0x03)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$710, DW_AT_name("PWM_MODE")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_PWM_MODE")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$710, DW_AT_bit_size(0x02)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$711, DW_AT_name("COMM_OPTION")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_COMM_OPTION")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$712, DW_AT_name("Reserved")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$713, DW_AT_name("Reserved2")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$713, DW_AT_bit_size(0x05)
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$201


$C$DW$T$202	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$202, DW_AT_name("DRV8305_GD_VGS_FAULTS_REG_BITS")
	.dwattr $C$DW$T$202, DW_AT_byte_size(0x01)
$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$714, DW_AT_name("Reserved")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$714, DW_AT_bit_size(0x05)
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$715, DW_AT_name("FETLC_VGS")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_FETLC_VGS")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$716, DW_AT_name("FETHC_VGS")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_FETHC_VGS")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$717, DW_AT_name("FETLB_VGS")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_FETLB_VGS")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$718, DW_AT_name("FETHB_VGS")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_FETHB_VGS")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$719, DW_AT_name("FETLA_VGS")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_FETLA_VGS")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$720, DW_AT_name("FETHA_VGS")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_FETHA_VGS")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$721, DW_AT_name("Reserved2")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$721, DW_AT_bit_size(0x05)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$202


$C$DW$T$203	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$203, DW_AT_name("DRV8305_HS_GATE_DRIVER_CNTRL_REG_BITS")
	.dwattr $C$DW$T$203, DW_AT_byte_size(0x01)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$722, DW_AT_name("IDRIVEP_HS")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_IDRIVEP_HS")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$722, DW_AT_bit_size(0x04)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$723, DW_AT_name("IDRIVEN_HS")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_IDRIVEN_HS")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$723, DW_AT_bit_size(0x04)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$724, DW_AT_name("TDRIVEN")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_TDRIVEN")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$724, DW_AT_bit_size(0x02)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$725, DW_AT_name("Reserved")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$726, DW_AT_name("Reserved2")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$726, DW_AT_bit_size(0x05)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$203


$C$DW$T$204	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$204, DW_AT_name("DRV8305_IC_FAULTS_REG_BITS")
	.dwattr $C$DW$T$204, DW_AT_byte_size(0x01)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$727, DW_AT_name("VCPH_OVLO_ABS")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_VCPH_OVLO_ABS")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$728, DW_AT_name("VCPH_OVLO")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_VCPH_OVLO")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$729, DW_AT_name("VCPH_UVLO")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_VCPH_UVLO")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$730, DW_AT_name("Reserved")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$731, DW_AT_name("VCP_LSD_UVLO")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_VCP_LSD_UVLO")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$732, DW_AT_name("AVDD_UVLO")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_AVDD_UVLO")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$733, DW_AT_name("VREG_UV")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_VREG_UV")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$734, DW_AT_name("Reserved2")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$735, DW_AT_name("OTS")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_OTS")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$736, DW_AT_name("WD_FAULT")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_WD_FAULT")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$737, DW_AT_name("PVDD_UVLO2")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_PVDD_UVLO2")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$738, DW_AT_name("Reserved3")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_Reserved3")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$738, DW_AT_bit_size(0x05)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$204


$C$DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$205, DW_AT_name("DRV8305_IC_OPS_REG_BITS")
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x01)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$739, DW_AT_name("SET_VCPH_UV")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_SET_VCPH_UV")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$740, DW_AT_name("CLR_FLTS")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_CLR_FLTS")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$741, DW_AT_name("SLEEP")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_SLEEP")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$742, DW_AT_name("WD_EN")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_WD_EN")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$743, DW_AT_name("DIS_SNS_OCP")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_DIS_SNS_OCP")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$744, DW_AT_name("WD_DLY")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_WD_DLY")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$744, DW_AT_bit_size(0x02)
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$745, DW_AT_name("EN_SNS_CLAMP")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_EN_SNS_CLAMP")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$746, DW_AT_name("DIS_GDRV_FAULT")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_DIS_GDRV_FAULT")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$747, DW_AT_name("DIS_VPVDD_UVLO2")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_DIS_VPVDD_UVLO2")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$748, DW_AT_name("Flip_OTS")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_Flip_OTS")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$749, DW_AT_name("Reserved2")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$749, DW_AT_bit_size(0x05)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$205


$C$DW$T$206	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$206, DW_AT_name("DRV8305_LS_GATE_DRIVER_CNTRL_REG_BITS")
	.dwattr $C$DW$T$206, DW_AT_byte_size(0x01)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$750, DW_AT_name("IDRIVEP_LS")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_IDRIVEP_LS")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$750, DW_AT_bit_size(0x04)
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$751, DW_AT_name("IDRIVEN_LS")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_IDRIVEN_LS")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$751, DW_AT_bit_size(0x04)
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$752, DW_AT_name("TDRIVEP")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_TDRIVEP")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$752, DW_AT_bit_size(0x02)
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$753, DW_AT_name("Reserved")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$754, DW_AT_name("Reserved2")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$754, DW_AT_bit_size(0x05)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$206


$C$DW$T$207	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$207, DW_AT_name("DRV8305_OV_VDS_FAULTS_REG_BITS")
	.dwattr $C$DW$T$207, DW_AT_byte_size(0x01)
$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$755, DW_AT_name("SNS_A_OCP")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_SNS_A_OCP")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$756, DW_AT_name("SNS_B_OCP")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_SNS_B_OCP")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$757, DW_AT_name("SNS_C_OCP")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_SNS_C_OCP")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$758, DW_AT_name("Rerserved")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_Rerserved")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$758, DW_AT_bit_size(0x02)
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$759, DW_AT_name("FETLC_VDS")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_FETLC_VDS")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$760, DW_AT_name("FETHC_VDS")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_FETHC_VDS")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$761, DW_AT_name("FETLB_VDS")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_FETLB_VDS")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$762, DW_AT_name("FETHB_VDS")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_FETHB_VDS")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$763, DW_AT_name("FETLA_VDS")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_FETLA_VDS")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$764, DW_AT_name("FETHA_VDS")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_FETHA_VDS")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$765, DW_AT_name("Reserved2")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$765, DW_AT_bit_size(0x05)
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$207


$C$DW$T$208	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$208, DW_AT_name("DRV8305_SHUNT_AMP_CNTRL_REG_BITS")
	.dwattr $C$DW$T$208, DW_AT_byte_size(0x01)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$766, DW_AT_name("GAIN_CS1")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_GAIN_CS1")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$766, DW_AT_bit_size(0x02)
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$767, DW_AT_name("GAIN_CS2")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_GAIN_CS2")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$767, DW_AT_bit_size(0x02)
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$768, DW_AT_name("GAIN_CS3")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_GAIN_CS3")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$768, DW_AT_bit_size(0x02)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$769, DW_AT_name("CS_BLANK")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_CS_BLANK")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$769, DW_AT_bit_size(0x02)
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$770, DW_AT_name("DC_CAL_CH1")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_DC_CAL_CH1")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$771, DW_AT_name("DC_CAL_CH2")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_DC_CAL_CH2")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$772, DW_AT_name("DC_CAL_CH3")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_DC_CAL_CH3")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$773, DW_AT_name("Reserved2")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$773, DW_AT_bit_size(0x05)
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$208


$C$DW$T$209	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$209, DW_AT_name("DRV8305_VDS_SNS_CNTRL_REG_BITS")
	.dwattr $C$DW$T$209, DW_AT_byte_size(0x01)
$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$774, DW_AT_name("VDS_MODE")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_VDS_MODE")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$774, DW_AT_bit_size(0x03)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$775, DW_AT_name("VDS_LEVEL")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_VDS_LEVEL")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$775, DW_AT_bit_size(0x05)
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$776, DW_AT_name("Reserved")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$776, DW_AT_bit_size(0x03)
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$777, DW_AT_name("Reserved2")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$777, DW_AT_bit_size(0x05)
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$209


$C$DW$T$210	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$210, DW_AT_name("DRV8305_VREG_CNTRL_REG_BITS")
	.dwattr $C$DW$T$210, DW_AT_byte_size(0x01)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$778, DW_AT_name("VREG_UV_LEVEL")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_VREG_UV_LEVEL")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$778, DW_AT_bit_size(0x02)
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$779, DW_AT_name("DIS_VREG_PWRGD")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_DIS_VREG_PWRGD")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$780, DW_AT_name("SLEEP_DLY")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_SLEEP_DLY")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$780, DW_AT_bit_size(0x02)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$781, DW_AT_name("Reserved")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$781, DW_AT_bit_size(0x03)
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$782, DW_AT_name("VREF_SCALING")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_VREF_SCALING")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$782, DW_AT_bit_size(0x02)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$783, DW_AT_name("Reserved2")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$784, DW_AT_name("Reserved3")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_Reserved3")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$784, DW_AT_bit_size(0x05)
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$210


$C$DW$T$211	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$211, DW_AT_name("DRV8305_WWD_REG_BITS")
	.dwattr $C$DW$T$211, DW_AT_byte_size(0x01)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$785, DW_AT_name("OTW")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_OTW")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$786, DW_AT_name("TMP_FLG3")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_TMP_FLG3")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$787, DW_AT_name("TMP_FLG2")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_TMP_FLG2")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$788, DW_AT_name("TMP_FLG1")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_TMP_FLG1")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$789, DW_AT_name("VCHP_UVFL")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_VCHP_UVFL")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$790, DW_AT_name("VDS_STATUS")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_VDS_STATUS")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$791, DW_AT_name("PVDD_OVFL")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_PVDD_OVFL")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$792, DW_AT_name("PVDD_UVFL")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_PVDD_UVFL")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$793, DW_AT_name("TMP_FLG4")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_TMP_FLG4")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$794, DW_AT_name("Reserve")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_Reserve")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$795, DW_AT_name("FAULT")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_FAULT")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$796, DW_AT_name("Reserved2")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_Reserved2")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$796, DW_AT_bit_size(0x05)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$211


$C$DW$T$212	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$212, DW_AT_name("EPWMXLINK_BITS")
	.dwattr $C$DW$T$212, DW_AT_byte_size(0x02)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$797, DW_AT_name("TBPRDLINK")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_TBPRDLINK")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$797, DW_AT_bit_size(0x04)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$798, DW_AT_name("CMPALINK")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_CMPALINK")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$798, DW_AT_bit_size(0x04)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$799, DW_AT_name("CMPBLINK")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_CMPBLINK")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$799, DW_AT_bit_size(0x04)
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$800, DW_AT_name("CMPCLINK")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_CMPCLINK")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$800, DW_AT_bit_size(0x04)
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$801, DW_AT_name("CMPDLINK")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_CMPDLINK")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$801, DW_AT_bit_size(0x04)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$802, DW_AT_name("rsvd1")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$802, DW_AT_bit_size(0x08)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$803, DW_AT_name("GLDCTL2LINK")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_GLDCTL2LINK")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$803, DW_AT_bit_size(0x04)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$212


$C$DW$T$213	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$213, DW_AT_name("EPWMXLINK_REG")
	.dwattr $C$DW$T$213, DW_AT_byte_size(0x02)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$804, DW_AT_name("all")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$805, DW_AT_name("bit")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$213


$C$DW$T$222	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$222, DW_AT_name("EPWM_REGS")
	.dwattr $C$DW$T$222, DW_AT_byte_size(0x100)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$806, DW_AT_name("TBCTL")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_TBCTL")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$300)
	.dwattr $C$DW$807, DW_AT_name("TBCTL2")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_TBCTL2")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$808, DW_AT_name("rsvd1")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$809, DW_AT_name("TBCTR")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_TBCTR")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$306)
	.dwattr $C$DW$810, DW_AT_name("TBSTS")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_TBSTS")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$811, DW_AT_name("rsvd2")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$812, DW_AT_name("CMPCTL")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_CMPCTL")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$813, DW_AT_name("CMPCTL2")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_CMPCTL2")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$814, DW_AT_name("rsvd3")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$815, DW_AT_name("DBCTL")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_DBCTL")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$816, DW_AT_name("DBCTL2")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_DBCTL2")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$817, DW_AT_name("rsvd4")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$818, DW_AT_name("AQCTL")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_AQCTL")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$819, DW_AT_name("AQTSRCSEL")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_AQTSRCSEL")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$820, DW_AT_name("rsvd5")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$821, DW_AT_name("PCCTL")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_PCCTL")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$822, DW_AT_name("rsvd6")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$823, DW_AT_name("HRCNFG")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_HRCNFG")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$824, DW_AT_name("HRPWR")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_HRPWR")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$825, DW_AT_name("rsvd7")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$826, DW_AT_name("HRMSTEP")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_HRMSTEP")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$827, DW_AT_name("HRCNFG2")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_HRCNFG2")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$828, DW_AT_name("rsvd8")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$829, DW_AT_name("HRPCTL")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_HRPCTL")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$308)
	.dwattr $C$DW$830, DW_AT_name("TRREM")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_TRREM")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$831, DW_AT_name("rsvd9")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x2f]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$832, DW_AT_name("GLDCTL")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_GLDCTL")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$243)
	.dwattr $C$DW$833, DW_AT_name("GLDCFG")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_GLDCFG")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$834, DW_AT_name("rsvd10")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$835, DW_AT_name("EPWMXLINK")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_EPWMXLINK")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$836, DW_AT_name("rsvd11")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$837, DW_AT_name("AQCTLA")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_AQCTLA")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$838, DW_AT_name("AQCTLA2")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_AQCTLA2")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$839, DW_AT_name("AQCTLB")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_AQCTLB")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$840, DW_AT_name("AQCTLB2")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_AQCTLB2")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$841, DW_AT_name("rsvd12")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$842, DW_AT_name("AQSFRC")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_AQSFRC")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$843, DW_AT_name("rsvd13")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$844, DW_AT_name("AQCSFRC")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_AQCSFRC")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$845, DW_AT_name("rsvd14")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$846, DW_AT_name("DBREDHR")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_DBREDHR")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$847, DW_AT_name("DBRED")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_DBRED")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$848, DW_AT_name("DBFEDHR")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_DBFEDHR")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$849, DW_AT_name("DBFED")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_DBFED")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$850, DW_AT_name("rsvd15")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$304)
	.dwattr $C$DW$851, DW_AT_name("TBPHS")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_TBPHS")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$852, DW_AT_name("TBPRDHR")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_TBPRDHR")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$853, DW_AT_name("TBPRD")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_TBPRD")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x63]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$854, DW_AT_name("rsvd16")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$855, DW_AT_name("CMPA")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_CMPA")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$856, DW_AT_name("CMPB")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_CMPB")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$857, DW_AT_name("rsvd17")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_rsvd17")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$858, DW_AT_name("CMPC")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_CMPC")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x6f]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$859, DW_AT_name("rsvd18")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_rsvd18")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$860, DW_AT_name("CMPD")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_CMPD")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x71]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$861, DW_AT_name("rsvd19")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_rsvd19")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$862, DW_AT_name("GLDCTL2")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_GLDCTL2")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$863, DW_AT_name("rsvd20")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_rsvd20")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x75]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$336)
	.dwattr $C$DW$864, DW_AT_name("TZSEL")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_TZSEL")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$865, DW_AT_name("rsvd21")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_rsvd21")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x81]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$324)
	.dwattr $C$DW$866, DW_AT_name("TZDCSEL")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_TZDCSEL")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$867, DW_AT_name("rsvd22")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_rsvd22")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x83]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$868, DW_AT_name("TZCTL")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_TZCTL")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$316)
	.dwattr $C$DW$869, DW_AT_name("TZCTL2")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_TZCTL2")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x85]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$318)
	.dwattr $C$DW$870, DW_AT_name("TZCTLDCA")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_TZCTLDCA")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$320)
	.dwattr $C$DW$871, DW_AT_name("TZCTLDCB")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_TZCTLDCB")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x87]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$872, DW_AT_name("rsvd23")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_rsvd23")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$326)
	.dwattr $C$DW$873, DW_AT_name("TZEINT")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_TZEINT")
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x8d]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$874, DW_AT_name("rsvd24")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_rsvd24")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$328)
	.dwattr $C$DW$875, DW_AT_name("TZFLG")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_TZFLG")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x93]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$312)
	.dwattr $C$DW$876, DW_AT_name("TZCBCFLG")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_TZCBCFLG")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$334)
	.dwattr $C$DW$877, DW_AT_name("TZOSTFLG")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_TZOSTFLG")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x95]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$878, DW_AT_name("rsvd25")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_rsvd25")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$314)
	.dwattr $C$DW$879, DW_AT_name("TZCLR")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_TZCLR")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x97]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$310)
	.dwattr $C$DW$880, DW_AT_name("TZCBCCLR")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_TZCBCCLR")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$332)
	.dwattr $C$DW$881, DW_AT_name("TZOSTCLR")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_TZOSTCLR")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x99]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$882, DW_AT_name("rsvd26")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_rsvd26")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$330)
	.dwattr $C$DW$883, DW_AT_name("TZFRC")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_TZFRC")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x9b]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$884, DW_AT_name("rsvd27")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_rsvd27")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$885, DW_AT_name("ETSEL")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_ETSEL")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$886, DW_AT_name("rsvd28")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_rsvd28")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0xa5]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$887, DW_AT_name("ETPS")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_ETPS")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$888, DW_AT_name("rsvd29")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_rsvd29")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0xa7]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$889, DW_AT_name("ETFLG")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_ETFLG")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$890, DW_AT_name("rsvd30")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_rsvd30")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0xa9]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$891, DW_AT_name("ETCLR")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_ETCLR")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$892, DW_AT_name("rsvd31")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_rsvd31")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0xab]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$893, DW_AT_name("ETFRC")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_ETFRC")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$894, DW_AT_name("rsvd32")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_rsvd32")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0xad]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$895, DW_AT_name("ETINTPS")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_ETINTPS")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$896, DW_AT_name("rsvd33")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_rsvd33")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0xaf]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$241)
	.dwattr $C$DW$897, DW_AT_name("ETSOCPS")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_ETSOCPS")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$898, DW_AT_name("rsvd34")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_rsvd34")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0xb1]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$899, DW_AT_name("ETCNTINITCTL")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_ETCNTINITCTL")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$900, DW_AT_name("rsvd35")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_rsvd35")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0xb3]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$901, DW_AT_name("ETCNTINIT")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_ETCNTINIT")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$902, DW_AT_name("rsvd36")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_rsvd36")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0xb5]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$903, DW_AT_name("DCTRIPSEL")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_DCTRIPSEL")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$904, DW_AT_name("rsvd37")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_rsvd37")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0xc1]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$905, DW_AT_name("DCACTL")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_DCACTL")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0xc3]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$906, DW_AT_name("DCBCTL")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_DCBCTL")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$907, DW_AT_name("rsvd38")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_rsvd38")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0xc5]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$908, DW_AT_name("DCFCTL")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_DCFCTL")
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0xc7]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$909, DW_AT_name("DCCAPCTL")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_DCCAPCTL")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$910, DW_AT_name("DCFOFFSET")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_DCFOFFSET")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0xc9]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$911, DW_AT_name("DCFOFFSETCNT")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_DCFOFFSETCNT")
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$912, DW_AT_name("DCFWINDOW")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_DCFWINDOW")
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0xcb]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$913, DW_AT_name("DCFWINDOWCNT")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_DCFWINDOWCNT")
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$914, DW_AT_name("rsvd39")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_rsvd39")
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0xcd]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$915, DW_AT_name("DCCAP")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_DCCAP")
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0xcf]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$916, DW_AT_name("rsvd40")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_rsvd40")
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$917, DW_AT_name("DCAHTRIPSEL")
	.dwattr $C$DW$917, DW_AT_TI_symbol_name("_DCAHTRIPSEL")
	.dwattr $C$DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$918, DW_AT_name("DCALTRIPSEL")
	.dwattr $C$DW$918, DW_AT_TI_symbol_name("_DCALTRIPSEL")
	.dwattr $C$DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0xd3]
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$919, DW_AT_name("DCBHTRIPSEL")
	.dwattr $C$DW$919, DW_AT_TI_symbol_name("_DCBHTRIPSEL")
	.dwattr $C$DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$920, DW_AT_name("DCBLTRIPSEL")
	.dwattr $C$DW$920, DW_AT_TI_symbol_name("_DCBLTRIPSEL")
	.dwattr $C$DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0xd5]
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$921, DW_AT_name("rsvd41")
	.dwattr $C$DW$921, DW_AT_TI_symbol_name("_rsvd41")
	.dwattr $C$DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$222

$C$DW$922	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$222)

$C$DW$T$61	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$922)

$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)


$C$DW$T$223	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$223, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$223, DW_AT_byte_size(0x22)
$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$923, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$923, DW_AT_TI_symbol_name("_QPOSCNT")
	.dwattr $C$DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$924, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$924, DW_AT_TI_symbol_name("_QPOSINIT")
	.dwattr $C$DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$925, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$925, DW_AT_TI_symbol_name("_QPOSMAX")
	.dwattr $C$DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$926, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$926, DW_AT_TI_symbol_name("_QPOSCMP")
	.dwattr $C$DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$927, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$927, DW_AT_TI_symbol_name("_QPOSILAT")
	.dwattr $C$DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$928, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$928, DW_AT_TI_symbol_name("_QPOSSLAT")
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$929, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$929, DW_AT_TI_symbol_name("_QPOSLAT")
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$930, DW_AT_name("QUTMR")
	.dwattr $C$DW$930, DW_AT_TI_symbol_name("_QUTMR")
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$931, DW_AT_name("QUPRD")
	.dwattr $C$DW$931, DW_AT_TI_symbol_name("_QUPRD")
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$932, DW_AT_name("QWDTMR")
	.dwattr $C$DW$932, DW_AT_TI_symbol_name("_QWDTMR")
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$933, DW_AT_name("QWDPRD")
	.dwattr $C$DW$933, DW_AT_TI_symbol_name("_QWDPRD")
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$934, DW_AT_name("QDECCTL")
	.dwattr $C$DW$934, DW_AT_TI_symbol_name("_QDECCTL")
	.dwattr $C$DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$935, DW_AT_name("QEPCTL")
	.dwattr $C$DW$935, DW_AT_TI_symbol_name("_QEPCTL")
	.dwattr $C$DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$261)
	.dwattr $C$DW$936, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$936, DW_AT_TI_symbol_name("_QCAPCTL")
	.dwattr $C$DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$277)
	.dwattr $C$DW$937, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$937, DW_AT_TI_symbol_name("_QPOSCTL")
	.dwattr $C$DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$938, DW_AT_name("QEINT")
	.dwattr $C$DW$938, DW_AT_TI_symbol_name("_QEINT")
	.dwattr $C$DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$273)
	.dwattr $C$DW$939, DW_AT_name("QFLG")
	.dwattr $C$DW$939, DW_AT_TI_symbol_name("_QFLG")
	.dwattr $C$DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$940, DW_AT_name("QCLR")
	.dwattr $C$DW$940, DW_AT_TI_symbol_name("_QCLR")
	.dwattr $C$DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$941, DW_AT_name("QFRC")
	.dwattr $C$DW$941, DW_AT_TI_symbol_name("_QFRC")
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$271)
	.dwattr $C$DW$942, DW_AT_name("QEPSTS")
	.dwattr $C$DW$942, DW_AT_TI_symbol_name("_QEPSTS")
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$943, DW_AT_name("QCTMR")
	.dwattr $C$DW$943, DW_AT_TI_symbol_name("_QCTMR")
	.dwattr $C$DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$944, DW_AT_name("QCPRD")
	.dwattr $C$DW$944, DW_AT_TI_symbol_name("_QCPRD")
	.dwattr $C$DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$945, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$945, DW_AT_TI_symbol_name("_QCTMRLAT")
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$946, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$946, DW_AT_TI_symbol_name("_QCPRDLAT")
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$947, DW_AT_name("rsvd1")
	.dwattr $C$DW$947, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$223

$C$DW$948	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$223)

$C$DW$T$63	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$948)

$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x20)


$C$DW$T$224	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$224, DW_AT_name("ETCLR_BITS")
	.dwattr $C$DW$T$224, DW_AT_byte_size(0x01)
$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$949, DW_AT_name("INT")
	.dwattr $C$DW$949, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$949, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$949, DW_AT_bit_size(0x01)
	.dwattr $C$DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$950, DW_AT_name("rsvd1")
	.dwattr $C$DW$950, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$950, DW_AT_bit_size(0x01)
	.dwattr $C$DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$951, DW_AT_name("SOCA")
	.dwattr $C$DW$951, DW_AT_TI_symbol_name("_SOCA")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$951, DW_AT_bit_size(0x01)
	.dwattr $C$DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$952, DW_AT_name("SOCB")
	.dwattr $C$DW$952, DW_AT_TI_symbol_name("_SOCB")
	.dwattr $C$DW$952, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$952, DW_AT_bit_size(0x01)
	.dwattr $C$DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$953, DW_AT_name("rsvd2")
	.dwattr $C$DW$953, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$953, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$953, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$224


$C$DW$T$225	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$225, DW_AT_name("ETCLR_REG")
	.dwattr $C$DW$T$225, DW_AT_byte_size(0x01)
$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$954, DW_AT_name("all")
	.dwattr $C$DW$954, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$955, DW_AT_name("bit")
	.dwattr $C$DW$955, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$225


$C$DW$T$226	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$226, DW_AT_name("ETCNTINITCTL_BITS")
	.dwattr $C$DW$T$226, DW_AT_byte_size(0x01)
$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$956, DW_AT_name("rsvd1")
	.dwattr $C$DW$956, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$956, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$956, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$957, DW_AT_name("INTINITFRC")
	.dwattr $C$DW$957, DW_AT_TI_symbol_name("_INTINITFRC")
	.dwattr $C$DW$957, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$957, DW_AT_bit_size(0x01)
	.dwattr $C$DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$958, DW_AT_name("SOCAINITFRC")
	.dwattr $C$DW$958, DW_AT_TI_symbol_name("_SOCAINITFRC")
	.dwattr $C$DW$958, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$958, DW_AT_bit_size(0x01)
	.dwattr $C$DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$959, DW_AT_name("SOCBINITFRC")
	.dwattr $C$DW$959, DW_AT_TI_symbol_name("_SOCBINITFRC")
	.dwattr $C$DW$959, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$959, DW_AT_bit_size(0x01)
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$960, DW_AT_name("INTINITEN")
	.dwattr $C$DW$960, DW_AT_TI_symbol_name("_INTINITEN")
	.dwattr $C$DW$960, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$960, DW_AT_bit_size(0x01)
	.dwattr $C$DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$961, DW_AT_name("SOCAINITEN")
	.dwattr $C$DW$961, DW_AT_TI_symbol_name("_SOCAINITEN")
	.dwattr $C$DW$961, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$961, DW_AT_bit_size(0x01)
	.dwattr $C$DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$962, DW_AT_name("SOCBINITEN")
	.dwattr $C$DW$962, DW_AT_TI_symbol_name("_SOCBINITEN")
	.dwattr $C$DW$962, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$962, DW_AT_bit_size(0x01)
	.dwattr $C$DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$226


$C$DW$T$227	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$227, DW_AT_name("ETCNTINITCTL_REG")
	.dwattr $C$DW$T$227, DW_AT_byte_size(0x01)
$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$963, DW_AT_name("all")
	.dwattr $C$DW$963, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$964, DW_AT_name("bit")
	.dwattr $C$DW$964, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$227


$C$DW$T$228	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$228, DW_AT_name("ETCNTINIT_BITS")
	.dwattr $C$DW$T$228, DW_AT_byte_size(0x01)
$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$965, DW_AT_name("INTINIT")
	.dwattr $C$DW$965, DW_AT_TI_symbol_name("_INTINIT")
	.dwattr $C$DW$965, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$965, DW_AT_bit_size(0x04)
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$966, DW_AT_name("SOCAINIT")
	.dwattr $C$DW$966, DW_AT_TI_symbol_name("_SOCAINIT")
	.dwattr $C$DW$966, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$966, DW_AT_bit_size(0x04)
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$967, DW_AT_name("SOCBINIT")
	.dwattr $C$DW$967, DW_AT_TI_symbol_name("_SOCBINIT")
	.dwattr $C$DW$967, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$967, DW_AT_bit_size(0x04)
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$968, DW_AT_name("rsvd1")
	.dwattr $C$DW$968, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$968, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$968, DW_AT_bit_size(0x04)
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$228


$C$DW$T$229	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$229, DW_AT_name("ETCNTINIT_REG")
	.dwattr $C$DW$T$229, DW_AT_byte_size(0x01)
$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$969, DW_AT_name("all")
	.dwattr $C$DW$969, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$970, DW_AT_name("bit")
	.dwattr $C$DW$970, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$229


$C$DW$T$230	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$230, DW_AT_name("ETFLG_BITS")
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x01)
$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$971, DW_AT_name("INT")
	.dwattr $C$DW$971, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$971, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$971, DW_AT_bit_size(0x01)
	.dwattr $C$DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$972, DW_AT_name("rsvd1")
	.dwattr $C$DW$972, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$972, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$972, DW_AT_bit_size(0x01)
	.dwattr $C$DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$973	.dwtag  DW_TAG_member
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$973, DW_AT_name("SOCA")
	.dwattr $C$DW$973, DW_AT_TI_symbol_name("_SOCA")
	.dwattr $C$DW$973, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$973, DW_AT_bit_size(0x01)
	.dwattr $C$DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$973, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$974	.dwtag  DW_TAG_member
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$974, DW_AT_name("SOCB")
	.dwattr $C$DW$974, DW_AT_TI_symbol_name("_SOCB")
	.dwattr $C$DW$974, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$974, DW_AT_bit_size(0x01)
	.dwattr $C$DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$974, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$975, DW_AT_name("rsvd2")
	.dwattr $C$DW$975, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$975, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$975, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$230


$C$DW$T$231	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$231, DW_AT_name("ETFLG_REG")
	.dwattr $C$DW$T$231, DW_AT_byte_size(0x01)
$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$976, DW_AT_name("all")
	.dwattr $C$DW$976, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$977, DW_AT_name("bit")
	.dwattr $C$DW$977, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$231


$C$DW$T$232	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$232, DW_AT_name("ETFRC_BITS")
	.dwattr $C$DW$T$232, DW_AT_byte_size(0x01)
$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$978, DW_AT_name("INT")
	.dwattr $C$DW$978, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$978, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$978, DW_AT_bit_size(0x01)
	.dwattr $C$DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$979, DW_AT_name("rsvd1")
	.dwattr $C$DW$979, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$979, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$979, DW_AT_bit_size(0x01)
	.dwattr $C$DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$980, DW_AT_name("SOCA")
	.dwattr $C$DW$980, DW_AT_TI_symbol_name("_SOCA")
	.dwattr $C$DW$980, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$980, DW_AT_bit_size(0x01)
	.dwattr $C$DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$981, DW_AT_name("SOCB")
	.dwattr $C$DW$981, DW_AT_TI_symbol_name("_SOCB")
	.dwattr $C$DW$981, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$981, DW_AT_bit_size(0x01)
	.dwattr $C$DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$982	.dwtag  DW_TAG_member
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$982, DW_AT_name("rsvd2")
	.dwattr $C$DW$982, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$982, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$982, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$982, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$232


$C$DW$T$233	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$233, DW_AT_name("ETFRC_REG")
	.dwattr $C$DW$T$233, DW_AT_byte_size(0x01)
$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$983, DW_AT_name("all")
	.dwattr $C$DW$983, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$984, DW_AT_name("bit")
	.dwattr $C$DW$984, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$233


$C$DW$T$234	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$234, DW_AT_name("ETINTPS_BITS")
	.dwattr $C$DW$T$234, DW_AT_byte_size(0x01)
$C$DW$985	.dwtag  DW_TAG_member
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$985, DW_AT_name("INTPRD2")
	.dwattr $C$DW$985, DW_AT_TI_symbol_name("_INTPRD2")
	.dwattr $C$DW$985, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$985, DW_AT_bit_size(0x04)
	.dwattr $C$DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$985, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$986	.dwtag  DW_TAG_member
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$986, DW_AT_name("INTCNT2")
	.dwattr $C$DW$986, DW_AT_TI_symbol_name("_INTCNT2")
	.dwattr $C$DW$986, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$986, DW_AT_bit_size(0x04)
	.dwattr $C$DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$986, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$987, DW_AT_name("rsvd1")
	.dwattr $C$DW$987, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$987, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$987, DW_AT_bit_size(0x08)
	.dwattr $C$DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$234


$C$DW$T$235	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$235, DW_AT_name("ETINTPS_REG")
	.dwattr $C$DW$T$235, DW_AT_byte_size(0x01)
$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$988, DW_AT_name("all")
	.dwattr $C$DW$988, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$989	.dwtag  DW_TAG_member
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$989, DW_AT_name("bit")
	.dwattr $C$DW$989, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$989, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$235


$C$DW$T$236	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$236, DW_AT_name("ETPS_BITS")
	.dwattr $C$DW$T$236, DW_AT_byte_size(0x01)
$C$DW$990	.dwtag  DW_TAG_member
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$990, DW_AT_name("INTPRD")
	.dwattr $C$DW$990, DW_AT_TI_symbol_name("_INTPRD")
	.dwattr $C$DW$990, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$990, DW_AT_bit_size(0x02)
	.dwattr $C$DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$990, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$991	.dwtag  DW_TAG_member
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$991, DW_AT_name("INTCNT")
	.dwattr $C$DW$991, DW_AT_TI_symbol_name("_INTCNT")
	.dwattr $C$DW$991, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$991, DW_AT_bit_size(0x02)
	.dwattr $C$DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$991, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$992	.dwtag  DW_TAG_member
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$992, DW_AT_name("INTPSSEL")
	.dwattr $C$DW$992, DW_AT_TI_symbol_name("_INTPSSEL")
	.dwattr $C$DW$992, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$992, DW_AT_bit_size(0x01)
	.dwattr $C$DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$992, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$993	.dwtag  DW_TAG_member
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$993, DW_AT_name("SOCPSSEL")
	.dwattr $C$DW$993, DW_AT_TI_symbol_name("_SOCPSSEL")
	.dwattr $C$DW$993, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$993, DW_AT_bit_size(0x01)
	.dwattr $C$DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$993, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$994	.dwtag  DW_TAG_member
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$994, DW_AT_name("rsvd1")
	.dwattr $C$DW$994, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$994, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$994, DW_AT_bit_size(0x02)
	.dwattr $C$DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$994, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$995	.dwtag  DW_TAG_member
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$995, DW_AT_name("SOCAPRD")
	.dwattr $C$DW$995, DW_AT_TI_symbol_name("_SOCAPRD")
	.dwattr $C$DW$995, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$995, DW_AT_bit_size(0x02)
	.dwattr $C$DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$996	.dwtag  DW_TAG_member
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$996, DW_AT_name("SOCACNT")
	.dwattr $C$DW$996, DW_AT_TI_symbol_name("_SOCACNT")
	.dwattr $C$DW$996, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$996, DW_AT_bit_size(0x02)
	.dwattr $C$DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$996, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$997	.dwtag  DW_TAG_member
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$997, DW_AT_name("SOCBPRD")
	.dwattr $C$DW$997, DW_AT_TI_symbol_name("_SOCBPRD")
	.dwattr $C$DW$997, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$997, DW_AT_bit_size(0x02)
	.dwattr $C$DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$997, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$998	.dwtag  DW_TAG_member
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$998, DW_AT_name("SOCBCNT")
	.dwattr $C$DW$998, DW_AT_TI_symbol_name("_SOCBCNT")
	.dwattr $C$DW$998, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$998, DW_AT_bit_size(0x02)
	.dwattr $C$DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$236


$C$DW$T$237	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$237, DW_AT_name("ETPS_REG")
	.dwattr $C$DW$T$237, DW_AT_byte_size(0x01)
$C$DW$999	.dwtag  DW_TAG_member
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$999, DW_AT_name("all")
	.dwattr $C$DW$999, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$999, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1000	.dwtag  DW_TAG_member
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$1000, DW_AT_name("bit")
	.dwattr $C$DW$1000, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1000, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$237


$C$DW$T$238	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$238, DW_AT_name("ETSEL_BITS")
	.dwattr $C$DW$T$238, DW_AT_byte_size(0x01)
$C$DW$1001	.dwtag  DW_TAG_member
	.dwattr $C$DW$1001, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1001, DW_AT_name("INTSEL")
	.dwattr $C$DW$1001, DW_AT_TI_symbol_name("_INTSEL")
	.dwattr $C$DW$1001, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1001, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1001, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1002	.dwtag  DW_TAG_member
	.dwattr $C$DW$1002, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1002, DW_AT_name("INTEN")
	.dwattr $C$DW$1002, DW_AT_TI_symbol_name("_INTEN")
	.dwattr $C$DW$1002, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1002, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1002, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1003	.dwtag  DW_TAG_member
	.dwattr $C$DW$1003, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1003, DW_AT_name("SOCASELCMP")
	.dwattr $C$DW$1003, DW_AT_TI_symbol_name("_SOCASELCMP")
	.dwattr $C$DW$1003, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1003, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1003, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1004	.dwtag  DW_TAG_member
	.dwattr $C$DW$1004, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1004, DW_AT_name("SOCBSELCMP")
	.dwattr $C$DW$1004, DW_AT_TI_symbol_name("_SOCBSELCMP")
	.dwattr $C$DW$1004, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1004, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1004, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1005	.dwtag  DW_TAG_member
	.dwattr $C$DW$1005, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1005, DW_AT_name("INTSELCMP")
	.dwattr $C$DW$1005, DW_AT_TI_symbol_name("_INTSELCMP")
	.dwattr $C$DW$1005, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1005, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1005, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1006	.dwtag  DW_TAG_member
	.dwattr $C$DW$1006, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1006, DW_AT_name("rsvd1")
	.dwattr $C$DW$1006, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1006, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1006, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1006, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1007	.dwtag  DW_TAG_member
	.dwattr $C$DW$1007, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1007, DW_AT_name("SOCASEL")
	.dwattr $C$DW$1007, DW_AT_TI_symbol_name("_SOCASEL")
	.dwattr $C$DW$1007, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1007, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1007, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1008	.dwtag  DW_TAG_member
	.dwattr $C$DW$1008, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1008, DW_AT_name("SOCAEN")
	.dwattr $C$DW$1008, DW_AT_TI_symbol_name("_SOCAEN")
	.dwattr $C$DW$1008, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1008, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1008, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1009	.dwtag  DW_TAG_member
	.dwattr $C$DW$1009, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1009, DW_AT_name("SOCBSEL")
	.dwattr $C$DW$1009, DW_AT_TI_symbol_name("_SOCBSEL")
	.dwattr $C$DW$1009, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1009, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1009, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1010	.dwtag  DW_TAG_member
	.dwattr $C$DW$1010, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1010, DW_AT_name("SOCBEN")
	.dwattr $C$DW$1010, DW_AT_TI_symbol_name("_SOCBEN")
	.dwattr $C$DW$1010, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1010, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1010, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$238


$C$DW$T$239	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$239, DW_AT_name("ETSEL_REG")
	.dwattr $C$DW$T$239, DW_AT_byte_size(0x01)
$C$DW$1011	.dwtag  DW_TAG_member
	.dwattr $C$DW$1011, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1011, DW_AT_name("all")
	.dwattr $C$DW$1011, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1011, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1012	.dwtag  DW_TAG_member
	.dwattr $C$DW$1012, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$1012, DW_AT_name("bit")
	.dwattr $C$DW$1012, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1012, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$239


$C$DW$T$240	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$240, DW_AT_name("ETSOCPS_BITS")
	.dwattr $C$DW$T$240, DW_AT_byte_size(0x01)
$C$DW$1013	.dwtag  DW_TAG_member
	.dwattr $C$DW$1013, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1013, DW_AT_name("SOCAPRD2")
	.dwattr $C$DW$1013, DW_AT_TI_symbol_name("_SOCAPRD2")
	.dwattr $C$DW$1013, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1013, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1013, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1014	.dwtag  DW_TAG_member
	.dwattr $C$DW$1014, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1014, DW_AT_name("SOCACNT2")
	.dwattr $C$DW$1014, DW_AT_TI_symbol_name("_SOCACNT2")
	.dwattr $C$DW$1014, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1014, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1014, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1015	.dwtag  DW_TAG_member
	.dwattr $C$DW$1015, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1015, DW_AT_name("SOCBPRD2")
	.dwattr $C$DW$1015, DW_AT_TI_symbol_name("_SOCBPRD2")
	.dwattr $C$DW$1015, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1015, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1015, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1016	.dwtag  DW_TAG_member
	.dwattr $C$DW$1016, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1016, DW_AT_name("SOCBCNT2")
	.dwattr $C$DW$1016, DW_AT_TI_symbol_name("_SOCBCNT2")
	.dwattr $C$DW$1016, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1016, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1016, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$240


$C$DW$T$241	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$241, DW_AT_name("ETSOCPS_REG")
	.dwattr $C$DW$T$241, DW_AT_byte_size(0x01)
$C$DW$1017	.dwtag  DW_TAG_member
	.dwattr $C$DW$1017, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1017, DW_AT_name("all")
	.dwattr $C$DW$1017, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1017, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1018	.dwtag  DW_TAG_member
	.dwattr $C$DW$1018, DW_AT_type(*$C$DW$T$240)
	.dwattr $C$DW$1018, DW_AT_name("bit")
	.dwattr $C$DW$1018, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1018, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$241


$C$DW$T$242	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$242, DW_AT_name("GLDCFG_BITS")
	.dwattr $C$DW$T$242, DW_AT_byte_size(0x01)
$C$DW$1019	.dwtag  DW_TAG_member
	.dwattr $C$DW$1019, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1019, DW_AT_name("TBPRD_TBPRDHR")
	.dwattr $C$DW$1019, DW_AT_TI_symbol_name("_TBPRD_TBPRDHR")
	.dwattr $C$DW$1019, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1019, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1019, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1020	.dwtag  DW_TAG_member
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1020, DW_AT_name("CMPA_CMPAHR")
	.dwattr $C$DW$1020, DW_AT_TI_symbol_name("_CMPA_CMPAHR")
	.dwattr $C$DW$1020, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1020, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1020, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1021	.dwtag  DW_TAG_member
	.dwattr $C$DW$1021, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1021, DW_AT_name("CMPB_CMPBHR")
	.dwattr $C$DW$1021, DW_AT_TI_symbol_name("_CMPB_CMPBHR")
	.dwattr $C$DW$1021, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1021, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1021, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1022	.dwtag  DW_TAG_member
	.dwattr $C$DW$1022, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1022, DW_AT_name("CMPC")
	.dwattr $C$DW$1022, DW_AT_TI_symbol_name("_CMPC")
	.dwattr $C$DW$1022, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1022, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1022, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1023	.dwtag  DW_TAG_member
	.dwattr $C$DW$1023, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1023, DW_AT_name("CMPD")
	.dwattr $C$DW$1023, DW_AT_TI_symbol_name("_CMPD")
	.dwattr $C$DW$1023, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1023, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1023, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1024	.dwtag  DW_TAG_member
	.dwattr $C$DW$1024, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1024, DW_AT_name("DBRED_DBREDHR")
	.dwattr $C$DW$1024, DW_AT_TI_symbol_name("_DBRED_DBREDHR")
	.dwattr $C$DW$1024, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1024, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1024, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1025	.dwtag  DW_TAG_member
	.dwattr $C$DW$1025, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1025, DW_AT_name("DBFED_DBFEDHR")
	.dwattr $C$DW$1025, DW_AT_TI_symbol_name("_DBFED_DBFEDHR")
	.dwattr $C$DW$1025, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1025, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1025, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1026	.dwtag  DW_TAG_member
	.dwattr $C$DW$1026, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1026, DW_AT_name("DBCTL")
	.dwattr $C$DW$1026, DW_AT_TI_symbol_name("_DBCTL")
	.dwattr $C$DW$1026, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1026, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1026, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1027	.dwtag  DW_TAG_member
	.dwattr $C$DW$1027, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1027, DW_AT_name("AQCTLA_AQCTLA2")
	.dwattr $C$DW$1027, DW_AT_TI_symbol_name("_AQCTLA_AQCTLA2")
	.dwattr $C$DW$1027, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1027, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1027, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1028	.dwtag  DW_TAG_member
	.dwattr $C$DW$1028, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1028, DW_AT_name("AQCTLB_AQCTLB2")
	.dwattr $C$DW$1028, DW_AT_TI_symbol_name("_AQCTLB_AQCTLB2")
	.dwattr $C$DW$1028, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1028, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1028, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1029	.dwtag  DW_TAG_member
	.dwattr $C$DW$1029, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1029, DW_AT_name("AQCSFRC")
	.dwattr $C$DW$1029, DW_AT_TI_symbol_name("_AQCSFRC")
	.dwattr $C$DW$1029, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1029, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1029, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1030	.dwtag  DW_TAG_member
	.dwattr $C$DW$1030, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1030, DW_AT_name("rsvd1")
	.dwattr $C$DW$1030, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1030, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1030, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1030, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$242


$C$DW$T$243	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$243, DW_AT_name("GLDCFG_REG")
	.dwattr $C$DW$T$243, DW_AT_byte_size(0x01)
$C$DW$1031	.dwtag  DW_TAG_member
	.dwattr $C$DW$1031, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1031, DW_AT_name("all")
	.dwattr $C$DW$1031, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1031, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1032	.dwtag  DW_TAG_member
	.dwattr $C$DW$1032, DW_AT_type(*$C$DW$T$242)
	.dwattr $C$DW$1032, DW_AT_name("bit")
	.dwattr $C$DW$1032, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1032, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$243


$C$DW$T$244	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$244, DW_AT_name("GLDCTL2_BITS")
	.dwattr $C$DW$T$244, DW_AT_byte_size(0x01)
$C$DW$1033	.dwtag  DW_TAG_member
	.dwattr $C$DW$1033, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1033, DW_AT_name("OSHTLD")
	.dwattr $C$DW$1033, DW_AT_TI_symbol_name("_OSHTLD")
	.dwattr $C$DW$1033, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1033, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1033, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1034	.dwtag  DW_TAG_member
	.dwattr $C$DW$1034, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1034, DW_AT_name("GFRCLD")
	.dwattr $C$DW$1034, DW_AT_TI_symbol_name("_GFRCLD")
	.dwattr $C$DW$1034, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1034, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1034, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1035	.dwtag  DW_TAG_member
	.dwattr $C$DW$1035, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1035, DW_AT_name("rsvd1")
	.dwattr $C$DW$1035, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1035, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1035, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1035, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$244


$C$DW$T$245	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$245, DW_AT_name("GLDCTL2_REG")
	.dwattr $C$DW$T$245, DW_AT_byte_size(0x01)
$C$DW$1036	.dwtag  DW_TAG_member
	.dwattr $C$DW$1036, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1036, DW_AT_name("all")
	.dwattr $C$DW$1036, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1036, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1037	.dwtag  DW_TAG_member
	.dwattr $C$DW$1037, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$1037, DW_AT_name("bit")
	.dwattr $C$DW$1037, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1037, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$245


$C$DW$T$246	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$246, DW_AT_name("GLDCTL_BITS")
	.dwattr $C$DW$T$246, DW_AT_byte_size(0x01)
$C$DW$1038	.dwtag  DW_TAG_member
	.dwattr $C$DW$1038, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1038, DW_AT_name("GLD")
	.dwattr $C$DW$1038, DW_AT_TI_symbol_name("_GLD")
	.dwattr $C$DW$1038, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1038, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1038, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1039	.dwtag  DW_TAG_member
	.dwattr $C$DW$1039, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1039, DW_AT_name("GLDMODE")
	.dwattr $C$DW$1039, DW_AT_TI_symbol_name("_GLDMODE")
	.dwattr $C$DW$1039, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1039, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1039, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1040	.dwtag  DW_TAG_member
	.dwattr $C$DW$1040, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1040, DW_AT_name("OSHTMODE")
	.dwattr $C$DW$1040, DW_AT_TI_symbol_name("_OSHTMODE")
	.dwattr $C$DW$1040, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1040, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1040, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1041	.dwtag  DW_TAG_member
	.dwattr $C$DW$1041, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1041, DW_AT_name("rsvd1")
	.dwattr $C$DW$1041, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1041, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1041, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1041, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1042	.dwtag  DW_TAG_member
	.dwattr $C$DW$1042, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1042, DW_AT_name("GLDPRD")
	.dwattr $C$DW$1042, DW_AT_TI_symbol_name("_GLDPRD")
	.dwattr $C$DW$1042, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1042, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1042, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1043	.dwtag  DW_TAG_member
	.dwattr $C$DW$1043, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1043, DW_AT_name("GLDCNT")
	.dwattr $C$DW$1043, DW_AT_TI_symbol_name("_GLDCNT")
	.dwattr $C$DW$1043, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1043, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1043, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1044	.dwtag  DW_TAG_member
	.dwattr $C$DW$1044, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1044, DW_AT_name("rsvd2")
	.dwattr $C$DW$1044, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1044, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1044, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1044, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$246


$C$DW$T$247	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$247, DW_AT_name("GLDCTL_REG")
	.dwattr $C$DW$T$247, DW_AT_byte_size(0x01)
$C$DW$1045	.dwtag  DW_TAG_member
	.dwattr $C$DW$1045, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1045, DW_AT_name("all")
	.dwattr $C$DW$1045, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1045, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1046	.dwtag  DW_TAG_member
	.dwattr $C$DW$1046, DW_AT_type(*$C$DW$T$246)
	.dwattr $C$DW$1046, DW_AT_name("bit")
	.dwattr $C$DW$1046, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1046, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$247


$C$DW$T$248	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$248, DW_AT_name("HRCNFG2_BITS")
	.dwattr $C$DW$T$248, DW_AT_byte_size(0x01)
$C$DW$1047	.dwtag  DW_TAG_member
	.dwattr $C$DW$1047, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1047, DW_AT_name("EDGMODEDB")
	.dwattr $C$DW$1047, DW_AT_TI_symbol_name("_EDGMODEDB")
	.dwattr $C$DW$1047, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1047, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1047, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1048	.dwtag  DW_TAG_member
	.dwattr $C$DW$1048, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1048, DW_AT_name("CTLMODEDBRED")
	.dwattr $C$DW$1048, DW_AT_TI_symbol_name("_CTLMODEDBRED")
	.dwattr $C$DW$1048, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1048, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1048, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1048, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1049	.dwtag  DW_TAG_member
	.dwattr $C$DW$1049, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1049, DW_AT_name("CTLMODEDBFED")
	.dwattr $C$DW$1049, DW_AT_TI_symbol_name("_CTLMODEDBFED")
	.dwattr $C$DW$1049, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1049, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1049, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1050	.dwtag  DW_TAG_member
	.dwattr $C$DW$1050, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1050, DW_AT_name("rsvd1")
	.dwattr $C$DW$1050, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1050, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1050, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1050, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1051	.dwtag  DW_TAG_member
	.dwattr $C$DW$1051, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1051, DW_AT_name("rsvd2")
	.dwattr $C$DW$1051, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1051, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1051, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1051, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1052	.dwtag  DW_TAG_member
	.dwattr $C$DW$1052, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1052, DW_AT_name("rsvd3")
	.dwattr $C$DW$1052, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1052, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1052, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1052, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$248


$C$DW$T$249	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$249, DW_AT_name("HRCNFG2_REG")
	.dwattr $C$DW$T$249, DW_AT_byte_size(0x01)
$C$DW$1053	.dwtag  DW_TAG_member
	.dwattr $C$DW$1053, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1053, DW_AT_name("all")
	.dwattr $C$DW$1053, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1053, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1054	.dwtag  DW_TAG_member
	.dwattr $C$DW$1054, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$1054, DW_AT_name("bit")
	.dwattr $C$DW$1054, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1054, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$249


$C$DW$T$250	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$250, DW_AT_name("HRCNFG_BITS")
	.dwattr $C$DW$T$250, DW_AT_byte_size(0x01)
$C$DW$1055	.dwtag  DW_TAG_member
	.dwattr $C$DW$1055, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1055, DW_AT_name("EDGMODE")
	.dwattr $C$DW$1055, DW_AT_TI_symbol_name("_EDGMODE")
	.dwattr $C$DW$1055, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1055, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1055, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1056	.dwtag  DW_TAG_member
	.dwattr $C$DW$1056, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1056, DW_AT_name("CTLMODE")
	.dwattr $C$DW$1056, DW_AT_TI_symbol_name("_CTLMODE")
	.dwattr $C$DW$1056, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1056, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1056, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1057	.dwtag  DW_TAG_member
	.dwattr $C$DW$1057, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1057, DW_AT_name("HRLOAD")
	.dwattr $C$DW$1057, DW_AT_TI_symbol_name("_HRLOAD")
	.dwattr $C$DW$1057, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1057, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1057, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1058	.dwtag  DW_TAG_member
	.dwattr $C$DW$1058, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1058, DW_AT_name("SELOUTB")
	.dwattr $C$DW$1058, DW_AT_TI_symbol_name("_SELOUTB")
	.dwattr $C$DW$1058, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1058, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1058, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1059	.dwtag  DW_TAG_member
	.dwattr $C$DW$1059, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1059, DW_AT_name("AUTOCONV")
	.dwattr $C$DW$1059, DW_AT_TI_symbol_name("_AUTOCONV")
	.dwattr $C$DW$1059, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1059, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1059, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1060	.dwtag  DW_TAG_member
	.dwattr $C$DW$1060, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1060, DW_AT_name("SWAPAB")
	.dwattr $C$DW$1060, DW_AT_TI_symbol_name("_SWAPAB")
	.dwattr $C$DW$1060, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1060, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1060, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1061	.dwtag  DW_TAG_member
	.dwattr $C$DW$1061, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1061, DW_AT_name("EDGMODEB")
	.dwattr $C$DW$1061, DW_AT_TI_symbol_name("_EDGMODEB")
	.dwattr $C$DW$1061, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1061, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1061, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1062	.dwtag  DW_TAG_member
	.dwattr $C$DW$1062, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1062, DW_AT_name("CTLMODEB")
	.dwattr $C$DW$1062, DW_AT_TI_symbol_name("_CTLMODEB")
	.dwattr $C$DW$1062, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1062, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1062, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1063	.dwtag  DW_TAG_member
	.dwattr $C$DW$1063, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1063, DW_AT_name("HRLOADB")
	.dwattr $C$DW$1063, DW_AT_TI_symbol_name("_HRLOADB")
	.dwattr $C$DW$1063, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1063, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1063, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1064	.dwtag  DW_TAG_member
	.dwattr $C$DW$1064, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1064, DW_AT_name("rsvd1")
	.dwattr $C$DW$1064, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1064, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1064, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1064, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1065	.dwtag  DW_TAG_member
	.dwattr $C$DW$1065, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1065, DW_AT_name("rsvd2")
	.dwattr $C$DW$1065, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1065, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1065, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1065, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$250


$C$DW$T$251	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$251, DW_AT_name("HRCNFG_REG")
	.dwattr $C$DW$T$251, DW_AT_byte_size(0x01)
$C$DW$1066	.dwtag  DW_TAG_member
	.dwattr $C$DW$1066, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1066, DW_AT_name("all")
	.dwattr $C$DW$1066, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1066, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1067	.dwtag  DW_TAG_member
	.dwattr $C$DW$1067, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$1067, DW_AT_name("bit")
	.dwattr $C$DW$1067, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1067, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$251


$C$DW$T$252	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$252, DW_AT_name("HRMSTEP_BITS")
	.dwattr $C$DW$T$252, DW_AT_byte_size(0x01)
$C$DW$1068	.dwtag  DW_TAG_member
	.dwattr $C$DW$1068, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1068, DW_AT_name("HRMSTEP")
	.dwattr $C$DW$1068, DW_AT_TI_symbol_name("_HRMSTEP")
	.dwattr $C$DW$1068, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1068, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1068, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1069	.dwtag  DW_TAG_member
	.dwattr $C$DW$1069, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1069, DW_AT_name("rsvd1")
	.dwattr $C$DW$1069, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1069, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1069, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1069, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$252


$C$DW$T$253	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$253, DW_AT_name("HRMSTEP_REG")
	.dwattr $C$DW$T$253, DW_AT_byte_size(0x01)
$C$DW$1070	.dwtag  DW_TAG_member
	.dwattr $C$DW$1070, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1070, DW_AT_name("all")
	.dwattr $C$DW$1070, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1070, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1070, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1071	.dwtag  DW_TAG_member
	.dwattr $C$DW$1071, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$1071, DW_AT_name("bit")
	.dwattr $C$DW$1071, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1071, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1071, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$253


$C$DW$T$254	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$254, DW_AT_name("HRPCTL_BITS")
	.dwattr $C$DW$T$254, DW_AT_byte_size(0x01)
$C$DW$1072	.dwtag  DW_TAG_member
	.dwattr $C$DW$1072, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1072, DW_AT_name("HRPE")
	.dwattr $C$DW$1072, DW_AT_TI_symbol_name("_HRPE")
	.dwattr $C$DW$1072, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1072, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1072, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1072, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1073	.dwtag  DW_TAG_member
	.dwattr $C$DW$1073, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1073, DW_AT_name("PWMSYNCSEL")
	.dwattr $C$DW$1073, DW_AT_TI_symbol_name("_PWMSYNCSEL")
	.dwattr $C$DW$1073, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1073, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1073, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1073, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1074	.dwtag  DW_TAG_member
	.dwattr $C$DW$1074, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1074, DW_AT_name("TBPHSHRLOADE")
	.dwattr $C$DW$1074, DW_AT_TI_symbol_name("_TBPHSHRLOADE")
	.dwattr $C$DW$1074, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1074, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1074, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1074, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1075	.dwtag  DW_TAG_member
	.dwattr $C$DW$1075, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1075, DW_AT_name("rsvd1")
	.dwattr $C$DW$1075, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1075, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1075, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1075, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1075, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1076	.dwtag  DW_TAG_member
	.dwattr $C$DW$1076, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1076, DW_AT_name("PWMSYNCSELX")
	.dwattr $C$DW$1076, DW_AT_TI_symbol_name("_PWMSYNCSELX")
	.dwattr $C$DW$1076, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1076, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1076, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1076, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1077	.dwtag  DW_TAG_member
	.dwattr $C$DW$1077, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1077, DW_AT_name("rsvd2")
	.dwattr $C$DW$1077, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1077, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1077, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1077, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1077, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$254


$C$DW$T$255	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$255, DW_AT_name("HRPCTL_REG")
	.dwattr $C$DW$T$255, DW_AT_byte_size(0x01)
$C$DW$1078	.dwtag  DW_TAG_member
	.dwattr $C$DW$1078, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1078, DW_AT_name("all")
	.dwattr $C$DW$1078, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1078, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1078, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1079	.dwtag  DW_TAG_member
	.dwattr $C$DW$1079, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$1079, DW_AT_name("bit")
	.dwattr $C$DW$1079, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1079, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1079, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$255


$C$DW$T$256	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$256, DW_AT_name("HRPWR_BITS")
	.dwattr $C$DW$T$256, DW_AT_byte_size(0x01)
$C$DW$1080	.dwtag  DW_TAG_member
	.dwattr $C$DW$1080, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1080, DW_AT_name("rsvd1")
	.dwattr $C$DW$1080, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1080, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1080, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1080, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1080, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1081	.dwtag  DW_TAG_member
	.dwattr $C$DW$1081, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1081, DW_AT_name("rsvd2")
	.dwattr $C$DW$1081, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1081, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1081, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1081, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1082	.dwtag  DW_TAG_member
	.dwattr $C$DW$1082, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1082, DW_AT_name("rsvd3")
	.dwattr $C$DW$1082, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1082, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1082, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1082, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1083	.dwtag  DW_TAG_member
	.dwattr $C$DW$1083, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1083, DW_AT_name("rsvd4")
	.dwattr $C$DW$1083, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1083, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1083, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1083, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1084	.dwtag  DW_TAG_member
	.dwattr $C$DW$1084, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1084, DW_AT_name("rsvd5")
	.dwattr $C$DW$1084, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1084, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1084, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1084, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1085	.dwtag  DW_TAG_member
	.dwattr $C$DW$1085, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1085, DW_AT_name("rsvd6")
	.dwattr $C$DW$1085, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1085, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1085, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1085, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1086	.dwtag  DW_TAG_member
	.dwattr $C$DW$1086, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1086, DW_AT_name("rsvd7")
	.dwattr $C$DW$1086, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1086, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1086, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1086, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1086, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1087	.dwtag  DW_TAG_member
	.dwattr $C$DW$1087, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1087, DW_AT_name("CALPWRON")
	.dwattr $C$DW$1087, DW_AT_TI_symbol_name("_CALPWRON")
	.dwattr $C$DW$1087, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1087, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1087, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1087, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$256


$C$DW$T$257	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$257, DW_AT_name("HRPWR_REG")
	.dwattr $C$DW$T$257, DW_AT_byte_size(0x01)
$C$DW$1088	.dwtag  DW_TAG_member
	.dwattr $C$DW$1088, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1088, DW_AT_name("all")
	.dwattr $C$DW$1088, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1088, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1088, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1089	.dwtag  DW_TAG_member
	.dwattr $C$DW$1089, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$1089, DW_AT_name("bit")
	.dwattr $C$DW$1089, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1089, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1089, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$257


$C$DW$T$258	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$258, DW_AT_name("PCCTL_BITS")
	.dwattr $C$DW$T$258, DW_AT_byte_size(0x01)
$C$DW$1090	.dwtag  DW_TAG_member
	.dwattr $C$DW$1090, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1090, DW_AT_name("CHPEN")
	.dwattr $C$DW$1090, DW_AT_TI_symbol_name("_CHPEN")
	.dwattr $C$DW$1090, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1090, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1090, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1090, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1091	.dwtag  DW_TAG_member
	.dwattr $C$DW$1091, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1091, DW_AT_name("OSHTWTH")
	.dwattr $C$DW$1091, DW_AT_TI_symbol_name("_OSHTWTH")
	.dwattr $C$DW$1091, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1091, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1091, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1091, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1092	.dwtag  DW_TAG_member
	.dwattr $C$DW$1092, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1092, DW_AT_name("CHPFREQ")
	.dwattr $C$DW$1092, DW_AT_TI_symbol_name("_CHPFREQ")
	.dwattr $C$DW$1092, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1092, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1092, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1092, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1093	.dwtag  DW_TAG_member
	.dwattr $C$DW$1093, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1093, DW_AT_name("CHPDUTY")
	.dwattr $C$DW$1093, DW_AT_TI_symbol_name("_CHPDUTY")
	.dwattr $C$DW$1093, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1093, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1093, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1093, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1094	.dwtag  DW_TAG_member
	.dwattr $C$DW$1094, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1094, DW_AT_name("rsvd1")
	.dwattr $C$DW$1094, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1094, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1094, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1094, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1094, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$258


$C$DW$T$259	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$259, DW_AT_name("PCCTL_REG")
	.dwattr $C$DW$T$259, DW_AT_byte_size(0x01)
$C$DW$1095	.dwtag  DW_TAG_member
	.dwattr $C$DW$1095, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1095, DW_AT_name("all")
	.dwattr $C$DW$1095, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1095, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1095, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1096	.dwtag  DW_TAG_member
	.dwattr $C$DW$1096, DW_AT_type(*$C$DW$T$258)
	.dwattr $C$DW$1096, DW_AT_name("bit")
	.dwattr $C$DW$1096, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1096, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1096, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$259


$C$DW$T$260	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$260, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$260, DW_AT_byte_size(0x01)
$C$DW$1097	.dwtag  DW_TAG_member
	.dwattr $C$DW$1097, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1097, DW_AT_name("UPPS")
	.dwattr $C$DW$1097, DW_AT_TI_symbol_name("_UPPS")
	.dwattr $C$DW$1097, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1097, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1097, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1097, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1098	.dwtag  DW_TAG_member
	.dwattr $C$DW$1098, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1098, DW_AT_name("CCPS")
	.dwattr $C$DW$1098, DW_AT_TI_symbol_name("_CCPS")
	.dwattr $C$DW$1098, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1098, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1098, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1098, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1099	.dwtag  DW_TAG_member
	.dwattr $C$DW$1099, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1099, DW_AT_name("rsvd1")
	.dwattr $C$DW$1099, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1099, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1099, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1099, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1099, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1100	.dwtag  DW_TAG_member
	.dwattr $C$DW$1100, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1100, DW_AT_name("CEN")
	.dwattr $C$DW$1100, DW_AT_TI_symbol_name("_CEN")
	.dwattr $C$DW$1100, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1100, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$260


$C$DW$T$261	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$261, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$261, DW_AT_byte_size(0x01)
$C$DW$1101	.dwtag  DW_TAG_member
	.dwattr $C$DW$1101, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1101, DW_AT_name("all")
	.dwattr $C$DW$1101, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1102	.dwtag  DW_TAG_member
	.dwattr $C$DW$1102, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$1102, DW_AT_name("bit")
	.dwattr $C$DW$1102, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1102, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$261


$C$DW$T$262	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$262, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$262, DW_AT_byte_size(0x01)
$C$DW$1103	.dwtag  DW_TAG_member
	.dwattr $C$DW$1103, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1103, DW_AT_name("INT")
	.dwattr $C$DW$1103, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$1103, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1104	.dwtag  DW_TAG_member
	.dwattr $C$DW$1104, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1104, DW_AT_name("PCE")
	.dwattr $C$DW$1104, DW_AT_TI_symbol_name("_PCE")
	.dwattr $C$DW$1104, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1105	.dwtag  DW_TAG_member
	.dwattr $C$DW$1105, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1105, DW_AT_name("PHE")
	.dwattr $C$DW$1105, DW_AT_TI_symbol_name("_PHE")
	.dwattr $C$DW$1105, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1106	.dwtag  DW_TAG_member
	.dwattr $C$DW$1106, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1106, DW_AT_name("QDC")
	.dwattr $C$DW$1106, DW_AT_TI_symbol_name("_QDC")
	.dwattr $C$DW$1106, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1107	.dwtag  DW_TAG_member
	.dwattr $C$DW$1107, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1107, DW_AT_name("WTO")
	.dwattr $C$DW$1107, DW_AT_TI_symbol_name("_WTO")
	.dwattr $C$DW$1107, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1108	.dwtag  DW_TAG_member
	.dwattr $C$DW$1108, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1108, DW_AT_name("PCU")
	.dwattr $C$DW$1108, DW_AT_TI_symbol_name("_PCU")
	.dwattr $C$DW$1108, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1109	.dwtag  DW_TAG_member
	.dwattr $C$DW$1109, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1109, DW_AT_name("PCO")
	.dwattr $C$DW$1109, DW_AT_TI_symbol_name("_PCO")
	.dwattr $C$DW$1109, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1110	.dwtag  DW_TAG_member
	.dwattr $C$DW$1110, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1110, DW_AT_name("PCR")
	.dwattr $C$DW$1110, DW_AT_TI_symbol_name("_PCR")
	.dwattr $C$DW$1110, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1111	.dwtag  DW_TAG_member
	.dwattr $C$DW$1111, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1111, DW_AT_name("PCM")
	.dwattr $C$DW$1111, DW_AT_TI_symbol_name("_PCM")
	.dwattr $C$DW$1111, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1112	.dwtag  DW_TAG_member
	.dwattr $C$DW$1112, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1112, DW_AT_name("SEL")
	.dwattr $C$DW$1112, DW_AT_TI_symbol_name("_SEL")
	.dwattr $C$DW$1112, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1113	.dwtag  DW_TAG_member
	.dwattr $C$DW$1113, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1113, DW_AT_name("IEL")
	.dwattr $C$DW$1113, DW_AT_TI_symbol_name("_IEL")
	.dwattr $C$DW$1113, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1114	.dwtag  DW_TAG_member
	.dwattr $C$DW$1114, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1114, DW_AT_name("UTO")
	.dwattr $C$DW$1114, DW_AT_TI_symbol_name("_UTO")
	.dwattr $C$DW$1114, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1115	.dwtag  DW_TAG_member
	.dwattr $C$DW$1115, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1115, DW_AT_name("rsvd1")
	.dwattr $C$DW$1115, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1115, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1115, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1115, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$262


$C$DW$T$263	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$263, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$263, DW_AT_byte_size(0x01)
$C$DW$1116	.dwtag  DW_TAG_member
	.dwattr $C$DW$1116, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1116, DW_AT_name("all")
	.dwattr $C$DW$1116, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1117	.dwtag  DW_TAG_member
	.dwattr $C$DW$1117, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$1117, DW_AT_name("bit")
	.dwattr $C$DW$1117, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1117, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$263


$C$DW$T$264	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$264, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$264, DW_AT_byte_size(0x01)
$C$DW$1118	.dwtag  DW_TAG_member
	.dwattr $C$DW$1118, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1118, DW_AT_name("rsvd1")
	.dwattr $C$DW$1118, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1118, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1118, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1119	.dwtag  DW_TAG_member
	.dwattr $C$DW$1119, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1119, DW_AT_name("QSP")
	.dwattr $C$DW$1119, DW_AT_TI_symbol_name("_QSP")
	.dwattr $C$DW$1119, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1120	.dwtag  DW_TAG_member
	.dwattr $C$DW$1120, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1120, DW_AT_name("QIP")
	.dwattr $C$DW$1120, DW_AT_TI_symbol_name("_QIP")
	.dwattr $C$DW$1120, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1121	.dwtag  DW_TAG_member
	.dwattr $C$DW$1121, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1121, DW_AT_name("QBP")
	.dwattr $C$DW$1121, DW_AT_TI_symbol_name("_QBP")
	.dwattr $C$DW$1121, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1122	.dwtag  DW_TAG_member
	.dwattr $C$DW$1122, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1122, DW_AT_name("QAP")
	.dwattr $C$DW$1122, DW_AT_TI_symbol_name("_QAP")
	.dwattr $C$DW$1122, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1123	.dwtag  DW_TAG_member
	.dwattr $C$DW$1123, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1123, DW_AT_name("IGATE")
	.dwattr $C$DW$1123, DW_AT_TI_symbol_name("_IGATE")
	.dwattr $C$DW$1123, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1124	.dwtag  DW_TAG_member
	.dwattr $C$DW$1124, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1124, DW_AT_name("SWAP")
	.dwattr $C$DW$1124, DW_AT_TI_symbol_name("_SWAP")
	.dwattr $C$DW$1124, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1125	.dwtag  DW_TAG_member
	.dwattr $C$DW$1125, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1125, DW_AT_name("XCR")
	.dwattr $C$DW$1125, DW_AT_TI_symbol_name("_XCR")
	.dwattr $C$DW$1125, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1126	.dwtag  DW_TAG_member
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1126, DW_AT_name("SPSEL")
	.dwattr $C$DW$1126, DW_AT_TI_symbol_name("_SPSEL")
	.dwattr $C$DW$1126, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1127	.dwtag  DW_TAG_member
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1127, DW_AT_name("SOEN")
	.dwattr $C$DW$1127, DW_AT_TI_symbol_name("_SOEN")
	.dwattr $C$DW$1127, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1128	.dwtag  DW_TAG_member
	.dwattr $C$DW$1128, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1128, DW_AT_name("QSRC")
	.dwattr $C$DW$1128, DW_AT_TI_symbol_name("_QSRC")
	.dwattr $C$DW$1128, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1128, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1128, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$264


$C$DW$T$265	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$265, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$265, DW_AT_byte_size(0x01)
$C$DW$1129	.dwtag  DW_TAG_member
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1129, DW_AT_name("all")
	.dwattr $C$DW$1129, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1130	.dwtag  DW_TAG_member
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$1130, DW_AT_name("bit")
	.dwattr $C$DW$1130, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1130, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$265


$C$DW$T$266	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$266, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$266, DW_AT_byte_size(0x01)
$C$DW$1131	.dwtag  DW_TAG_member
	.dwattr $C$DW$1131, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1131, DW_AT_name("rsvd1")
	.dwattr $C$DW$1131, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1131, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1132	.dwtag  DW_TAG_member
	.dwattr $C$DW$1132, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1132, DW_AT_name("PCE")
	.dwattr $C$DW$1132, DW_AT_TI_symbol_name("_PCE")
	.dwattr $C$DW$1132, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1133	.dwtag  DW_TAG_member
	.dwattr $C$DW$1133, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1133, DW_AT_name("QPE")
	.dwattr $C$DW$1133, DW_AT_TI_symbol_name("_QPE")
	.dwattr $C$DW$1133, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1134	.dwtag  DW_TAG_member
	.dwattr $C$DW$1134, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1134, DW_AT_name("QDC")
	.dwattr $C$DW$1134, DW_AT_TI_symbol_name("_QDC")
	.dwattr $C$DW$1134, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1135	.dwtag  DW_TAG_member
	.dwattr $C$DW$1135, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1135, DW_AT_name("WTO")
	.dwattr $C$DW$1135, DW_AT_TI_symbol_name("_WTO")
	.dwattr $C$DW$1135, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1136	.dwtag  DW_TAG_member
	.dwattr $C$DW$1136, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1136, DW_AT_name("PCU")
	.dwattr $C$DW$1136, DW_AT_TI_symbol_name("_PCU")
	.dwattr $C$DW$1136, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1137	.dwtag  DW_TAG_member
	.dwattr $C$DW$1137, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1137, DW_AT_name("PCO")
	.dwattr $C$DW$1137, DW_AT_TI_symbol_name("_PCO")
	.dwattr $C$DW$1137, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1138	.dwtag  DW_TAG_member
	.dwattr $C$DW$1138, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1138, DW_AT_name("PCR")
	.dwattr $C$DW$1138, DW_AT_TI_symbol_name("_PCR")
	.dwattr $C$DW$1138, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1139	.dwtag  DW_TAG_member
	.dwattr $C$DW$1139, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1139, DW_AT_name("PCM")
	.dwattr $C$DW$1139, DW_AT_TI_symbol_name("_PCM")
	.dwattr $C$DW$1139, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1140	.dwtag  DW_TAG_member
	.dwattr $C$DW$1140, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1140, DW_AT_name("SEL")
	.dwattr $C$DW$1140, DW_AT_TI_symbol_name("_SEL")
	.dwattr $C$DW$1140, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1141	.dwtag  DW_TAG_member
	.dwattr $C$DW$1141, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1141, DW_AT_name("IEL")
	.dwattr $C$DW$1141, DW_AT_TI_symbol_name("_IEL")
	.dwattr $C$DW$1141, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1142	.dwtag  DW_TAG_member
	.dwattr $C$DW$1142, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1142, DW_AT_name("UTO")
	.dwattr $C$DW$1142, DW_AT_TI_symbol_name("_UTO")
	.dwattr $C$DW$1142, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1143	.dwtag  DW_TAG_member
	.dwattr $C$DW$1143, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1143, DW_AT_name("rsvd2")
	.dwattr $C$DW$1143, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1143, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1143, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1143, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$266


$C$DW$T$267	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$267, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$267, DW_AT_byte_size(0x01)
$C$DW$1144	.dwtag  DW_TAG_member
	.dwattr $C$DW$1144, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1144, DW_AT_name("all")
	.dwattr $C$DW$1144, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1145	.dwtag  DW_TAG_member
	.dwattr $C$DW$1145, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$1145, DW_AT_name("bit")
	.dwattr $C$DW$1145, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1145, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$267


$C$DW$T$268	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$268, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$268, DW_AT_byte_size(0x01)
$C$DW$1146	.dwtag  DW_TAG_member
	.dwattr $C$DW$1146, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1146, DW_AT_name("WDE")
	.dwattr $C$DW$1146, DW_AT_TI_symbol_name("_WDE")
	.dwattr $C$DW$1146, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1147	.dwtag  DW_TAG_member
	.dwattr $C$DW$1147, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1147, DW_AT_name("UTE")
	.dwattr $C$DW$1147, DW_AT_TI_symbol_name("_UTE")
	.dwattr $C$DW$1147, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1148	.dwtag  DW_TAG_member
	.dwattr $C$DW$1148, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1148, DW_AT_name("QCLM")
	.dwattr $C$DW$1148, DW_AT_TI_symbol_name("_QCLM")
	.dwattr $C$DW$1148, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1149	.dwtag  DW_TAG_member
	.dwattr $C$DW$1149, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1149, DW_AT_name("QPEN")
	.dwattr $C$DW$1149, DW_AT_TI_symbol_name("_QPEN")
	.dwattr $C$DW$1149, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1150	.dwtag  DW_TAG_member
	.dwattr $C$DW$1150, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1150, DW_AT_name("IEL")
	.dwattr $C$DW$1150, DW_AT_TI_symbol_name("_IEL")
	.dwattr $C$DW$1150, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1150, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1151	.dwtag  DW_TAG_member
	.dwattr $C$DW$1151, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1151, DW_AT_name("SEL")
	.dwattr $C$DW$1151, DW_AT_TI_symbol_name("_SEL")
	.dwattr $C$DW$1151, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1152	.dwtag  DW_TAG_member
	.dwattr $C$DW$1152, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1152, DW_AT_name("SWI")
	.dwattr $C$DW$1152, DW_AT_TI_symbol_name("_SWI")
	.dwattr $C$DW$1152, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1153	.dwtag  DW_TAG_member
	.dwattr $C$DW$1153, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1153, DW_AT_name("IEI")
	.dwattr $C$DW$1153, DW_AT_TI_symbol_name("_IEI")
	.dwattr $C$DW$1153, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1153, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1154	.dwtag  DW_TAG_member
	.dwattr $C$DW$1154, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1154, DW_AT_name("SEI")
	.dwattr $C$DW$1154, DW_AT_TI_symbol_name("_SEI")
	.dwattr $C$DW$1154, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1154, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1155	.dwtag  DW_TAG_member
	.dwattr $C$DW$1155, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1155, DW_AT_name("PCRM")
	.dwattr $C$DW$1155, DW_AT_TI_symbol_name("_PCRM")
	.dwattr $C$DW$1155, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1155, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1156	.dwtag  DW_TAG_member
	.dwattr $C$DW$1156, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1156, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$1156, DW_AT_TI_symbol_name("_FREE_SOFT")
	.dwattr $C$DW$1156, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1156, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1156, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$268


$C$DW$T$269	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$269, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$269, DW_AT_byte_size(0x01)
$C$DW$1157	.dwtag  DW_TAG_member
	.dwattr $C$DW$1157, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1157, DW_AT_name("all")
	.dwattr $C$DW$1157, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1158	.dwtag  DW_TAG_member
	.dwattr $C$DW$1158, DW_AT_type(*$C$DW$T$268)
	.dwattr $C$DW$1158, DW_AT_name("bit")
	.dwattr $C$DW$1158, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1158, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$269


$C$DW$T$270	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$270, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$270, DW_AT_byte_size(0x01)
$C$DW$1159	.dwtag  DW_TAG_member
	.dwattr $C$DW$1159, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1159, DW_AT_name("PCEF")
	.dwattr $C$DW$1159, DW_AT_TI_symbol_name("_PCEF")
	.dwattr $C$DW$1159, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1160	.dwtag  DW_TAG_member
	.dwattr $C$DW$1160, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1160, DW_AT_name("FIMF")
	.dwattr $C$DW$1160, DW_AT_TI_symbol_name("_FIMF")
	.dwattr $C$DW$1160, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1161	.dwtag  DW_TAG_member
	.dwattr $C$DW$1161, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1161, DW_AT_name("CDEF")
	.dwattr $C$DW$1161, DW_AT_TI_symbol_name("_CDEF")
	.dwattr $C$DW$1161, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1162	.dwtag  DW_TAG_member
	.dwattr $C$DW$1162, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1162, DW_AT_name("COEF")
	.dwattr $C$DW$1162, DW_AT_TI_symbol_name("_COEF")
	.dwattr $C$DW$1162, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1163	.dwtag  DW_TAG_member
	.dwattr $C$DW$1163, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1163, DW_AT_name("QDLF")
	.dwattr $C$DW$1163, DW_AT_TI_symbol_name("_QDLF")
	.dwattr $C$DW$1163, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1164	.dwtag  DW_TAG_member
	.dwattr $C$DW$1164, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1164, DW_AT_name("QDF")
	.dwattr $C$DW$1164, DW_AT_TI_symbol_name("_QDF")
	.dwattr $C$DW$1164, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1165	.dwtag  DW_TAG_member
	.dwattr $C$DW$1165, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1165, DW_AT_name("FIDF")
	.dwattr $C$DW$1165, DW_AT_TI_symbol_name("_FIDF")
	.dwattr $C$DW$1165, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1166	.dwtag  DW_TAG_member
	.dwattr $C$DW$1166, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1166, DW_AT_name("UPEVNT")
	.dwattr $C$DW$1166, DW_AT_TI_symbol_name("_UPEVNT")
	.dwattr $C$DW$1166, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1167	.dwtag  DW_TAG_member
	.dwattr $C$DW$1167, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1167, DW_AT_name("rsvd1")
	.dwattr $C$DW$1167, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1167, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1167, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1167, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$270


$C$DW$T$271	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$271, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$271, DW_AT_byte_size(0x01)
$C$DW$1168	.dwtag  DW_TAG_member
	.dwattr $C$DW$1168, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1168, DW_AT_name("all")
	.dwattr $C$DW$1168, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1169	.dwtag  DW_TAG_member
	.dwattr $C$DW$1169, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$1169, DW_AT_name("bit")
	.dwattr $C$DW$1169, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1169, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$271


$C$DW$T$93	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$93, DW_AT_name("QEP_STATUS")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$1170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1170, DW_AT_name("Alignment")
	.dwattr $C$DW$1170, DW_AT_const_value(0x00)

$C$DW$1171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1171, DW_AT_name("WaitForIndex")
	.dwattr $C$DW$1171, DW_AT_const_value(0x01)

$C$DW$1172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1172, DW_AT_name("GotIndex")
	.dwattr $C$DW$1172, DW_AT_const_value(0x02)

	.dwendtag $C$DW$T$93

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("QepStatus_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)


$C$DW$T$272	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$272, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$272, DW_AT_byte_size(0x01)
$C$DW$1173	.dwtag  DW_TAG_member
	.dwattr $C$DW$1173, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1173, DW_AT_name("INT")
	.dwattr $C$DW$1173, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$1173, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1174	.dwtag  DW_TAG_member
	.dwattr $C$DW$1174, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1174, DW_AT_name("PCE")
	.dwattr $C$DW$1174, DW_AT_TI_symbol_name("_PCE")
	.dwattr $C$DW$1174, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1175	.dwtag  DW_TAG_member
	.dwattr $C$DW$1175, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1175, DW_AT_name("PHE")
	.dwattr $C$DW$1175, DW_AT_TI_symbol_name("_PHE")
	.dwattr $C$DW$1175, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1176	.dwtag  DW_TAG_member
	.dwattr $C$DW$1176, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1176, DW_AT_name("QDC")
	.dwattr $C$DW$1176, DW_AT_TI_symbol_name("_QDC")
	.dwattr $C$DW$1176, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1177	.dwtag  DW_TAG_member
	.dwattr $C$DW$1177, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1177, DW_AT_name("WTO")
	.dwattr $C$DW$1177, DW_AT_TI_symbol_name("_WTO")
	.dwattr $C$DW$1177, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1178	.dwtag  DW_TAG_member
	.dwattr $C$DW$1178, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1178, DW_AT_name("PCU")
	.dwattr $C$DW$1178, DW_AT_TI_symbol_name("_PCU")
	.dwattr $C$DW$1178, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1179	.dwtag  DW_TAG_member
	.dwattr $C$DW$1179, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1179, DW_AT_name("PCO")
	.dwattr $C$DW$1179, DW_AT_TI_symbol_name("_PCO")
	.dwattr $C$DW$1179, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1180	.dwtag  DW_TAG_member
	.dwattr $C$DW$1180, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1180, DW_AT_name("PCR")
	.dwattr $C$DW$1180, DW_AT_TI_symbol_name("_PCR")
	.dwattr $C$DW$1180, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1181	.dwtag  DW_TAG_member
	.dwattr $C$DW$1181, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1181, DW_AT_name("PCM")
	.dwattr $C$DW$1181, DW_AT_TI_symbol_name("_PCM")
	.dwattr $C$DW$1181, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1182	.dwtag  DW_TAG_member
	.dwattr $C$DW$1182, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1182, DW_AT_name("SEL")
	.dwattr $C$DW$1182, DW_AT_TI_symbol_name("_SEL")
	.dwattr $C$DW$1182, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1183	.dwtag  DW_TAG_member
	.dwattr $C$DW$1183, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1183, DW_AT_name("IEL")
	.dwattr $C$DW$1183, DW_AT_TI_symbol_name("_IEL")
	.dwattr $C$DW$1183, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1184	.dwtag  DW_TAG_member
	.dwattr $C$DW$1184, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1184, DW_AT_name("UTO")
	.dwattr $C$DW$1184, DW_AT_TI_symbol_name("_UTO")
	.dwattr $C$DW$1184, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1185	.dwtag  DW_TAG_member
	.dwattr $C$DW$1185, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1185, DW_AT_name("rsvd1")
	.dwattr $C$DW$1185, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1185, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1185, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1185, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$272


$C$DW$T$273	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$273, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$273, DW_AT_byte_size(0x01)
$C$DW$1186	.dwtag  DW_TAG_member
	.dwattr $C$DW$1186, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1186, DW_AT_name("all")
	.dwattr $C$DW$1186, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1187	.dwtag  DW_TAG_member
	.dwattr $C$DW$1187, DW_AT_type(*$C$DW$T$272)
	.dwattr $C$DW$1187, DW_AT_name("bit")
	.dwattr $C$DW$1187, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1187, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$273


$C$DW$T$274	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$274, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$274, DW_AT_byte_size(0x01)
$C$DW$1188	.dwtag  DW_TAG_member
	.dwattr $C$DW$1188, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1188, DW_AT_name("rsvd1")
	.dwattr $C$DW$1188, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1188, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1189	.dwtag  DW_TAG_member
	.dwattr $C$DW$1189, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1189, DW_AT_name("PCE")
	.dwattr $C$DW$1189, DW_AT_TI_symbol_name("_PCE")
	.dwattr $C$DW$1189, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1190	.dwtag  DW_TAG_member
	.dwattr $C$DW$1190, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1190, DW_AT_name("PHE")
	.dwattr $C$DW$1190, DW_AT_TI_symbol_name("_PHE")
	.dwattr $C$DW$1190, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1191	.dwtag  DW_TAG_member
	.dwattr $C$DW$1191, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1191, DW_AT_name("QDC")
	.dwattr $C$DW$1191, DW_AT_TI_symbol_name("_QDC")
	.dwattr $C$DW$1191, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1192	.dwtag  DW_TAG_member
	.dwattr $C$DW$1192, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1192, DW_AT_name("WTO")
	.dwattr $C$DW$1192, DW_AT_TI_symbol_name("_WTO")
	.dwattr $C$DW$1192, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1193	.dwtag  DW_TAG_member
	.dwattr $C$DW$1193, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1193, DW_AT_name("PCU")
	.dwattr $C$DW$1193, DW_AT_TI_symbol_name("_PCU")
	.dwattr $C$DW$1193, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1194	.dwtag  DW_TAG_member
	.dwattr $C$DW$1194, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1194, DW_AT_name("PCO")
	.dwattr $C$DW$1194, DW_AT_TI_symbol_name("_PCO")
	.dwattr $C$DW$1194, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1195	.dwtag  DW_TAG_member
	.dwattr $C$DW$1195, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1195, DW_AT_name("PCR")
	.dwattr $C$DW$1195, DW_AT_TI_symbol_name("_PCR")
	.dwattr $C$DW$1195, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1196	.dwtag  DW_TAG_member
	.dwattr $C$DW$1196, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1196, DW_AT_name("PCM")
	.dwattr $C$DW$1196, DW_AT_TI_symbol_name("_PCM")
	.dwattr $C$DW$1196, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1197	.dwtag  DW_TAG_member
	.dwattr $C$DW$1197, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1197, DW_AT_name("SEL")
	.dwattr $C$DW$1197, DW_AT_TI_symbol_name("_SEL")
	.dwattr $C$DW$1197, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1198	.dwtag  DW_TAG_member
	.dwattr $C$DW$1198, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1198, DW_AT_name("IEL")
	.dwattr $C$DW$1198, DW_AT_TI_symbol_name("_IEL")
	.dwattr $C$DW$1198, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1199	.dwtag  DW_TAG_member
	.dwattr $C$DW$1199, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1199, DW_AT_name("UTO")
	.dwattr $C$DW$1199, DW_AT_TI_symbol_name("_UTO")
	.dwattr $C$DW$1199, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1200	.dwtag  DW_TAG_member
	.dwattr $C$DW$1200, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1200, DW_AT_name("rsvd2")
	.dwattr $C$DW$1200, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1200, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1200, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1200, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$274


$C$DW$T$275	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$275, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$275, DW_AT_byte_size(0x01)
$C$DW$1201	.dwtag  DW_TAG_member
	.dwattr $C$DW$1201, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1201, DW_AT_name("all")
	.dwattr $C$DW$1201, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1202	.dwtag  DW_TAG_member
	.dwattr $C$DW$1202, DW_AT_type(*$C$DW$T$274)
	.dwattr $C$DW$1202, DW_AT_name("bit")
	.dwattr $C$DW$1202, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1202, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$275


$C$DW$T$276	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$276, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$276, DW_AT_byte_size(0x01)
$C$DW$1203	.dwtag  DW_TAG_member
	.dwattr $C$DW$1203, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1203, DW_AT_name("PCSPW")
	.dwattr $C$DW$1203, DW_AT_TI_symbol_name("_PCSPW")
	.dwattr $C$DW$1203, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1203, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1204	.dwtag  DW_TAG_member
	.dwattr $C$DW$1204, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1204, DW_AT_name("PCE")
	.dwattr $C$DW$1204, DW_AT_TI_symbol_name("_PCE")
	.dwattr $C$DW$1204, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1205	.dwtag  DW_TAG_member
	.dwattr $C$DW$1205, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1205, DW_AT_name("PCPOL")
	.dwattr $C$DW$1205, DW_AT_TI_symbol_name("_PCPOL")
	.dwattr $C$DW$1205, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1206	.dwtag  DW_TAG_member
	.dwattr $C$DW$1206, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1206, DW_AT_name("PCLOAD")
	.dwattr $C$DW$1206, DW_AT_TI_symbol_name("_PCLOAD")
	.dwattr $C$DW$1206, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1207	.dwtag  DW_TAG_member
	.dwattr $C$DW$1207, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1207, DW_AT_name("PCSHDW")
	.dwattr $C$DW$1207, DW_AT_TI_symbol_name("_PCSHDW")
	.dwattr $C$DW$1207, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1207, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$276


$C$DW$T$277	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$277, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$277, DW_AT_byte_size(0x01)
$C$DW$1208	.dwtag  DW_TAG_member
	.dwattr $C$DW$1208, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1208, DW_AT_name("all")
	.dwattr $C$DW$1208, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1209	.dwtag  DW_TAG_member
	.dwattr $C$DW$1209, DW_AT_type(*$C$DW$T$276)
	.dwattr $C$DW$1209, DW_AT_name("bit")
	.dwattr $C$DW$1209, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1209, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$277


$C$DW$T$278	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$278, DW_AT_name("RAMPDLYA_BITS")
	.dwattr $C$DW$T$278, DW_AT_byte_size(0x01)
$C$DW$1210	.dwtag  DW_TAG_member
	.dwattr $C$DW$1210, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1210, DW_AT_name("DELAY")
	.dwattr $C$DW$1210, DW_AT_TI_symbol_name("_DELAY")
	.dwattr $C$DW$1210, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1210, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$1210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1211	.dwtag  DW_TAG_member
	.dwattr $C$DW$1211, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1211, DW_AT_name("rsvd1")
	.dwattr $C$DW$1211, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1211, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1211, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1211, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$278


$C$DW$T$279	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$279, DW_AT_name("RAMPDLYA_REG")
	.dwattr $C$DW$T$279, DW_AT_byte_size(0x01)
$C$DW$1212	.dwtag  DW_TAG_member
	.dwattr $C$DW$1212, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1212, DW_AT_name("all")
	.dwattr $C$DW$1212, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1213	.dwtag  DW_TAG_member
	.dwattr $C$DW$1213, DW_AT_type(*$C$DW$T$278)
	.dwattr $C$DW$1213, DW_AT_name("bit")
	.dwattr $C$DW$1213, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1213, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$279


$C$DW$T$280	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$280, DW_AT_name("RAMPDLYS_BITS")
	.dwattr $C$DW$T$280, DW_AT_byte_size(0x01)
$C$DW$1214	.dwtag  DW_TAG_member
	.dwattr $C$DW$1214, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1214, DW_AT_name("DELAY")
	.dwattr $C$DW$1214, DW_AT_TI_symbol_name("_DELAY")
	.dwattr $C$DW$1214, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1214, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$1214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1215	.dwtag  DW_TAG_member
	.dwattr $C$DW$1215, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1215, DW_AT_name("rsvd1")
	.dwattr $C$DW$1215, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1215, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1215, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1215, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$280


$C$DW$T$281	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$281, DW_AT_name("RAMPDLYS_REG")
	.dwattr $C$DW$T$281, DW_AT_byte_size(0x01)
$C$DW$1216	.dwtag  DW_TAG_member
	.dwattr $C$DW$1216, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1216, DW_AT_name("all")
	.dwattr $C$DW$1216, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1217	.dwtag  DW_TAG_member
	.dwattr $C$DW$1217, DW_AT_type(*$C$DW$T$280)
	.dwattr $C$DW$1217, DW_AT_name("bit")
	.dwattr $C$DW$1217, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1217, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$281


$C$DW$T$95	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$95, DW_AT_name("RUN_STOP")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$1218	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1218, DW_AT_name("STOP")
	.dwattr $C$DW$1218, DW_AT_const_value(0x00)

$C$DW$1219	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$1219, DW_AT_name("RUN")
	.dwattr $C$DW$1219, DW_AT_const_value(0x01)

	.dwendtag $C$DW$T$95

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("RunStop_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)


$C$DW$T$282	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$282, DW_AT_name("SPIBRR_BITS")
	.dwattr $C$DW$T$282, DW_AT_byte_size(0x01)
$C$DW$1220	.dwtag  DW_TAG_member
	.dwattr $C$DW$1220, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1220, DW_AT_name("SPI_BIT_RATE")
	.dwattr $C$DW$1220, DW_AT_TI_symbol_name("_SPI_BIT_RATE")
	.dwattr $C$DW$1220, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1220, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1221	.dwtag  DW_TAG_member
	.dwattr $C$DW$1221, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1221, DW_AT_name("rsvd1")
	.dwattr $C$DW$1221, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1221, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1221, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1221, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$282


$C$DW$T$283	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$283, DW_AT_name("SPIBRR_REG")
	.dwattr $C$DW$T$283, DW_AT_byte_size(0x01)
$C$DW$1222	.dwtag  DW_TAG_member
	.dwattr $C$DW$1222, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1222, DW_AT_name("all")
	.dwattr $C$DW$1222, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1223	.dwtag  DW_TAG_member
	.dwattr $C$DW$1223, DW_AT_type(*$C$DW$T$282)
	.dwattr $C$DW$1223, DW_AT_name("bit")
	.dwattr $C$DW$1223, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1223, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$283


$C$DW$T$284	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$284, DW_AT_name("SPICCR_BITS")
	.dwattr $C$DW$T$284, DW_AT_byte_size(0x01)
$C$DW$1224	.dwtag  DW_TAG_member
	.dwattr $C$DW$1224, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1224, DW_AT_name("SPICHAR")
	.dwattr $C$DW$1224, DW_AT_TI_symbol_name("_SPICHAR")
	.dwattr $C$DW$1224, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1224, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1225	.dwtag  DW_TAG_member
	.dwattr $C$DW$1225, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1225, DW_AT_name("SPILBK")
	.dwattr $C$DW$1225, DW_AT_TI_symbol_name("_SPILBK")
	.dwattr $C$DW$1225, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1226	.dwtag  DW_TAG_member
	.dwattr $C$DW$1226, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1226, DW_AT_name("HS_MODE")
	.dwattr $C$DW$1226, DW_AT_TI_symbol_name("_HS_MODE")
	.dwattr $C$DW$1226, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1227	.dwtag  DW_TAG_member
	.dwattr $C$DW$1227, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1227, DW_AT_name("CLKPOLARITY")
	.dwattr $C$DW$1227, DW_AT_TI_symbol_name("_CLKPOLARITY")
	.dwattr $C$DW$1227, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1228	.dwtag  DW_TAG_member
	.dwattr $C$DW$1228, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1228, DW_AT_name("SPISWRESET")
	.dwattr $C$DW$1228, DW_AT_TI_symbol_name("_SPISWRESET")
	.dwattr $C$DW$1228, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1229	.dwtag  DW_TAG_member
	.dwattr $C$DW$1229, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1229, DW_AT_name("rsvd1")
	.dwattr $C$DW$1229, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1229, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1229, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1229, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$284


$C$DW$T$285	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$285, DW_AT_name("SPICCR_REG")
	.dwattr $C$DW$T$285, DW_AT_byte_size(0x01)
$C$DW$1230	.dwtag  DW_TAG_member
	.dwattr $C$DW$1230, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1230, DW_AT_name("all")
	.dwattr $C$DW$1230, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1231	.dwtag  DW_TAG_member
	.dwattr $C$DW$1231, DW_AT_type(*$C$DW$T$284)
	.dwattr $C$DW$1231, DW_AT_name("bit")
	.dwattr $C$DW$1231, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1231, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$285


$C$DW$T$286	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$286, DW_AT_name("SPICTL_BITS")
	.dwattr $C$DW$T$286, DW_AT_byte_size(0x01)
$C$DW$1232	.dwtag  DW_TAG_member
	.dwattr $C$DW$1232, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1232, DW_AT_name("SPIINTENA")
	.dwattr $C$DW$1232, DW_AT_TI_symbol_name("_SPIINTENA")
	.dwattr $C$DW$1232, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1233	.dwtag  DW_TAG_member
	.dwattr $C$DW$1233, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1233, DW_AT_name("TALK")
	.dwattr $C$DW$1233, DW_AT_TI_symbol_name("_TALK")
	.dwattr $C$DW$1233, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1234	.dwtag  DW_TAG_member
	.dwattr $C$DW$1234, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1234, DW_AT_name("MASTER_SLAVE")
	.dwattr $C$DW$1234, DW_AT_TI_symbol_name("_MASTER_SLAVE")
	.dwattr $C$DW$1234, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1235	.dwtag  DW_TAG_member
	.dwattr $C$DW$1235, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1235, DW_AT_name("CLK_PHASE")
	.dwattr $C$DW$1235, DW_AT_TI_symbol_name("_CLK_PHASE")
	.dwattr $C$DW$1235, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1236	.dwtag  DW_TAG_member
	.dwattr $C$DW$1236, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1236, DW_AT_name("OVERRUNINTENA")
	.dwattr $C$DW$1236, DW_AT_TI_symbol_name("_OVERRUNINTENA")
	.dwattr $C$DW$1236, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1237	.dwtag  DW_TAG_member
	.dwattr $C$DW$1237, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1237, DW_AT_name("rsvd1")
	.dwattr $C$DW$1237, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1237, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1237, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1237, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$286


$C$DW$T$287	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$287, DW_AT_name("SPICTL_REG")
	.dwattr $C$DW$T$287, DW_AT_byte_size(0x01)
$C$DW$1238	.dwtag  DW_TAG_member
	.dwattr $C$DW$1238, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1238, DW_AT_name("all")
	.dwattr $C$DW$1238, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1239	.dwtag  DW_TAG_member
	.dwattr $C$DW$1239, DW_AT_type(*$C$DW$T$286)
	.dwattr $C$DW$1239, DW_AT_name("bit")
	.dwattr $C$DW$1239, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1239, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$287


$C$DW$T$288	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$288, DW_AT_name("SPIFFCT_BITS")
	.dwattr $C$DW$T$288, DW_AT_byte_size(0x01)
$C$DW$1240	.dwtag  DW_TAG_member
	.dwattr $C$DW$1240, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1240, DW_AT_name("TXDLY")
	.dwattr $C$DW$1240, DW_AT_TI_symbol_name("_TXDLY")
	.dwattr $C$DW$1240, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1240, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1241	.dwtag  DW_TAG_member
	.dwattr $C$DW$1241, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1241, DW_AT_name("rsvd1")
	.dwattr $C$DW$1241, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1241, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1241, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1241, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$288


$C$DW$T$289	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$289, DW_AT_name("SPIFFCT_REG")
	.dwattr $C$DW$T$289, DW_AT_byte_size(0x01)
$C$DW$1242	.dwtag  DW_TAG_member
	.dwattr $C$DW$1242, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1242, DW_AT_name("all")
	.dwattr $C$DW$1242, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1243	.dwtag  DW_TAG_member
	.dwattr $C$DW$1243, DW_AT_type(*$C$DW$T$288)
	.dwattr $C$DW$1243, DW_AT_name("bit")
	.dwattr $C$DW$1243, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1243, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$289


$C$DW$T$290	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$290, DW_AT_name("SPIFFRX_BITS")
	.dwattr $C$DW$T$290, DW_AT_byte_size(0x01)
$C$DW$1244	.dwtag  DW_TAG_member
	.dwattr $C$DW$1244, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1244, DW_AT_name("RXFFIL")
	.dwattr $C$DW$1244, DW_AT_TI_symbol_name("_RXFFIL")
	.dwattr $C$DW$1244, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1244, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1245	.dwtag  DW_TAG_member
	.dwattr $C$DW$1245, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1245, DW_AT_name("RXFFIENA")
	.dwattr $C$DW$1245, DW_AT_TI_symbol_name("_RXFFIENA")
	.dwattr $C$DW$1245, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1246	.dwtag  DW_TAG_member
	.dwattr $C$DW$1246, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1246, DW_AT_name("RXFFINTCLR")
	.dwattr $C$DW$1246, DW_AT_TI_symbol_name("_RXFFINTCLR")
	.dwattr $C$DW$1246, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1247	.dwtag  DW_TAG_member
	.dwattr $C$DW$1247, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1247, DW_AT_name("RXFFINT")
	.dwattr $C$DW$1247, DW_AT_TI_symbol_name("_RXFFINT")
	.dwattr $C$DW$1247, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1248	.dwtag  DW_TAG_member
	.dwattr $C$DW$1248, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1248, DW_AT_name("RXFFST")
	.dwattr $C$DW$1248, DW_AT_TI_symbol_name("_RXFFST")
	.dwattr $C$DW$1248, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1248, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1249	.dwtag  DW_TAG_member
	.dwattr $C$DW$1249, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1249, DW_AT_name("RXFIFORESET")
	.dwattr $C$DW$1249, DW_AT_TI_symbol_name("_RXFIFORESET")
	.dwattr $C$DW$1249, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1250	.dwtag  DW_TAG_member
	.dwattr $C$DW$1250, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1250, DW_AT_name("RXFFOVFCLR")
	.dwattr $C$DW$1250, DW_AT_TI_symbol_name("_RXFFOVFCLR")
	.dwattr $C$DW$1250, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1251	.dwtag  DW_TAG_member
	.dwattr $C$DW$1251, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1251, DW_AT_name("RXFFOVF")
	.dwattr $C$DW$1251, DW_AT_TI_symbol_name("_RXFFOVF")
	.dwattr $C$DW$1251, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1251, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$290


$C$DW$T$291	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$291, DW_AT_name("SPIFFRX_REG")
	.dwattr $C$DW$T$291, DW_AT_byte_size(0x01)
$C$DW$1252	.dwtag  DW_TAG_member
	.dwattr $C$DW$1252, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1252, DW_AT_name("all")
	.dwattr $C$DW$1252, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1253	.dwtag  DW_TAG_member
	.dwattr $C$DW$1253, DW_AT_type(*$C$DW$T$290)
	.dwattr $C$DW$1253, DW_AT_name("bit")
	.dwattr $C$DW$1253, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1253, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$291


$C$DW$T$292	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$292, DW_AT_name("SPIFFTX_BITS")
	.dwattr $C$DW$T$292, DW_AT_byte_size(0x01)
$C$DW$1254	.dwtag  DW_TAG_member
	.dwattr $C$DW$1254, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1254, DW_AT_name("TXFFIL")
	.dwattr $C$DW$1254, DW_AT_TI_symbol_name("_TXFFIL")
	.dwattr $C$DW$1254, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1254, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1255	.dwtag  DW_TAG_member
	.dwattr $C$DW$1255, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1255, DW_AT_name("TXFFIENA")
	.dwattr $C$DW$1255, DW_AT_TI_symbol_name("_TXFFIENA")
	.dwattr $C$DW$1255, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1256	.dwtag  DW_TAG_member
	.dwattr $C$DW$1256, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1256, DW_AT_name("TXFFINTCLR")
	.dwattr $C$DW$1256, DW_AT_TI_symbol_name("_TXFFINTCLR")
	.dwattr $C$DW$1256, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1257	.dwtag  DW_TAG_member
	.dwattr $C$DW$1257, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1257, DW_AT_name("TXFFINT")
	.dwattr $C$DW$1257, DW_AT_TI_symbol_name("_TXFFINT")
	.dwattr $C$DW$1257, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1258	.dwtag  DW_TAG_member
	.dwattr $C$DW$1258, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1258, DW_AT_name("TXFFST")
	.dwattr $C$DW$1258, DW_AT_TI_symbol_name("_TXFFST")
	.dwattr $C$DW$1258, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1258, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1259	.dwtag  DW_TAG_member
	.dwattr $C$DW$1259, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1259, DW_AT_name("TXFIFO")
	.dwattr $C$DW$1259, DW_AT_TI_symbol_name("_TXFIFO")
	.dwattr $C$DW$1259, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1260	.dwtag  DW_TAG_member
	.dwattr $C$DW$1260, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1260, DW_AT_name("SPIFFENA")
	.dwattr $C$DW$1260, DW_AT_TI_symbol_name("_SPIFFENA")
	.dwattr $C$DW$1260, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1261	.dwtag  DW_TAG_member
	.dwattr $C$DW$1261, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1261, DW_AT_name("SPIRST")
	.dwattr $C$DW$1261, DW_AT_TI_symbol_name("_SPIRST")
	.dwattr $C$DW$1261, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1261, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$292


$C$DW$T$293	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$293, DW_AT_name("SPIFFTX_REG")
	.dwattr $C$DW$T$293, DW_AT_byte_size(0x01)
$C$DW$1262	.dwtag  DW_TAG_member
	.dwattr $C$DW$1262, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1262, DW_AT_name("all")
	.dwattr $C$DW$1262, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1263	.dwtag  DW_TAG_member
	.dwattr $C$DW$1263, DW_AT_type(*$C$DW$T$292)
	.dwattr $C$DW$1263, DW_AT_name("bit")
	.dwattr $C$DW$1263, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1263, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$293


$C$DW$T$294	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$294, DW_AT_name("SPIPRI_BITS")
	.dwattr $C$DW$T$294, DW_AT_byte_size(0x01)
$C$DW$1264	.dwtag  DW_TAG_member
	.dwattr $C$DW$1264, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1264, DW_AT_name("TRIWIRE")
	.dwattr $C$DW$1264, DW_AT_TI_symbol_name("_TRIWIRE")
	.dwattr $C$DW$1264, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1265	.dwtag  DW_TAG_member
	.dwattr $C$DW$1265, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1265, DW_AT_name("STEINV")
	.dwattr $C$DW$1265, DW_AT_TI_symbol_name("_STEINV")
	.dwattr $C$DW$1265, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1266	.dwtag  DW_TAG_member
	.dwattr $C$DW$1266, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1266, DW_AT_name("rsvd1")
	.dwattr $C$DW$1266, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1266, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1266, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1267	.dwtag  DW_TAG_member
	.dwattr $C$DW$1267, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1267, DW_AT_name("FREE")
	.dwattr $C$DW$1267, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1267, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1268	.dwtag  DW_TAG_member
	.dwattr $C$DW$1268, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1268, DW_AT_name("SOFT")
	.dwattr $C$DW$1268, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1268, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1269	.dwtag  DW_TAG_member
	.dwattr $C$DW$1269, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1269, DW_AT_name("rsvd2")
	.dwattr $C$DW$1269, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1269, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1270	.dwtag  DW_TAG_member
	.dwattr $C$DW$1270, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1270, DW_AT_name("rsvd3")
	.dwattr $C$DW$1270, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1270, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1270, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1270, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$294


$C$DW$T$295	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$295, DW_AT_name("SPIPRI_REG")
	.dwattr $C$DW$T$295, DW_AT_byte_size(0x01)
$C$DW$1271	.dwtag  DW_TAG_member
	.dwattr $C$DW$1271, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1271, DW_AT_name("all")
	.dwattr $C$DW$1271, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1272	.dwtag  DW_TAG_member
	.dwattr $C$DW$1272, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$1272, DW_AT_name("bit")
	.dwattr $C$DW$1272, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1272, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$295


$C$DW$T$296	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$296, DW_AT_name("SPISTS_BITS")
	.dwattr $C$DW$T$296, DW_AT_byte_size(0x01)
$C$DW$1273	.dwtag  DW_TAG_member
	.dwattr $C$DW$1273, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1273, DW_AT_name("rsvd1")
	.dwattr $C$DW$1273, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1273, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1273, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1274	.dwtag  DW_TAG_member
	.dwattr $C$DW$1274, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1274, DW_AT_name("BUFFULL_FLAG")
	.dwattr $C$DW$1274, DW_AT_TI_symbol_name("_BUFFULL_FLAG")
	.dwattr $C$DW$1274, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1275	.dwtag  DW_TAG_member
	.dwattr $C$DW$1275, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1275, DW_AT_name("INT_FLAG")
	.dwattr $C$DW$1275, DW_AT_TI_symbol_name("_INT_FLAG")
	.dwattr $C$DW$1275, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1276	.dwtag  DW_TAG_member
	.dwattr $C$DW$1276, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1276, DW_AT_name("OVERRUN_FLAG")
	.dwattr $C$DW$1276, DW_AT_TI_symbol_name("_OVERRUN_FLAG")
	.dwattr $C$DW$1276, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1277	.dwtag  DW_TAG_member
	.dwattr $C$DW$1277, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1277, DW_AT_name("rsvd2")
	.dwattr $C$DW$1277, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1277, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1277, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1277, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$296


$C$DW$T$297	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$297, DW_AT_name("SPISTS_REG")
	.dwattr $C$DW$T$297, DW_AT_byte_size(0x01)
$C$DW$1278	.dwtag  DW_TAG_member
	.dwattr $C$DW$1278, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1278, DW_AT_name("all")
	.dwattr $C$DW$1278, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1279	.dwtag  DW_TAG_member
	.dwattr $C$DW$1279, DW_AT_type(*$C$DW$T$296)
	.dwattr $C$DW$1279, DW_AT_name("bit")
	.dwattr $C$DW$1279, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1279, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$297


$C$DW$T$298	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$298, DW_AT_name("SPI_REGS")
	.dwattr $C$DW$T$298, DW_AT_byte_size(0x10)
$C$DW$1280	.dwtag  DW_TAG_member
	.dwattr $C$DW$1280, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$1280, DW_AT_name("SPICCR")
	.dwattr $C$DW$1280, DW_AT_TI_symbol_name("_SPICCR")
	.dwattr $C$DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1281	.dwtag  DW_TAG_member
	.dwattr $C$DW$1281, DW_AT_type(*$C$DW$T$287)
	.dwattr $C$DW$1281, DW_AT_name("SPICTL")
	.dwattr $C$DW$1281, DW_AT_TI_symbol_name("_SPICTL")
	.dwattr $C$DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1282	.dwtag  DW_TAG_member
	.dwattr $C$DW$1282, DW_AT_type(*$C$DW$T$297)
	.dwattr $C$DW$1282, DW_AT_name("SPISTS")
	.dwattr $C$DW$1282, DW_AT_TI_symbol_name("_SPISTS")
	.dwattr $C$DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1283	.dwtag  DW_TAG_member
	.dwattr $C$DW$1283, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1283, DW_AT_name("rsvd1")
	.dwattr $C$DW$1283, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1283, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1284	.dwtag  DW_TAG_member
	.dwattr $C$DW$1284, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$1284, DW_AT_name("SPIBRR")
	.dwattr $C$DW$1284, DW_AT_TI_symbol_name("_SPIBRR")
	.dwattr $C$DW$1284, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1285	.dwtag  DW_TAG_member
	.dwattr $C$DW$1285, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1285, DW_AT_name("rsvd2")
	.dwattr $C$DW$1285, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1285, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1286	.dwtag  DW_TAG_member
	.dwattr $C$DW$1286, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1286, DW_AT_name("SPIRXEMU")
	.dwattr $C$DW$1286, DW_AT_TI_symbol_name("_SPIRXEMU")
	.dwattr $C$DW$1286, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1287	.dwtag  DW_TAG_member
	.dwattr $C$DW$1287, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1287, DW_AT_name("SPIRXBUF")
	.dwattr $C$DW$1287, DW_AT_TI_symbol_name("_SPIRXBUF")
	.dwattr $C$DW$1287, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1288	.dwtag  DW_TAG_member
	.dwattr $C$DW$1288, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1288, DW_AT_name("SPITXBUF")
	.dwattr $C$DW$1288, DW_AT_TI_symbol_name("_SPITXBUF")
	.dwattr $C$DW$1288, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1289	.dwtag  DW_TAG_member
	.dwattr $C$DW$1289, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1289, DW_AT_name("SPIDAT")
	.dwattr $C$DW$1289, DW_AT_TI_symbol_name("_SPIDAT")
	.dwattr $C$DW$1289, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1290	.dwtag  DW_TAG_member
	.dwattr $C$DW$1290, DW_AT_type(*$C$DW$T$293)
	.dwattr $C$DW$1290, DW_AT_name("SPIFFTX")
	.dwattr $C$DW$1290, DW_AT_TI_symbol_name("_SPIFFTX")
	.dwattr $C$DW$1290, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1291	.dwtag  DW_TAG_member
	.dwattr $C$DW$1291, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$1291, DW_AT_name("SPIFFRX")
	.dwattr $C$DW$1291, DW_AT_TI_symbol_name("_SPIFFRX")
	.dwattr $C$DW$1291, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1292	.dwtag  DW_TAG_member
	.dwattr $C$DW$1292, DW_AT_type(*$C$DW$T$289)
	.dwattr $C$DW$1292, DW_AT_name("SPIFFCT")
	.dwattr $C$DW$1292, DW_AT_TI_symbol_name("_SPIFFCT")
	.dwattr $C$DW$1292, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1293	.dwtag  DW_TAG_member
	.dwattr $C$DW$1293, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$1293, DW_AT_name("rsvd3")
	.dwattr $C$DW$1293, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1293, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1294	.dwtag  DW_TAG_member
	.dwattr $C$DW$1294, DW_AT_type(*$C$DW$T$295)
	.dwattr $C$DW$1294, DW_AT_name("SPIPRI")
	.dwattr $C$DW$1294, DW_AT_TI_symbol_name("_SPIPRI")
	.dwattr $C$DW$1294, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1294, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$298

$C$DW$1295	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1295, DW_AT_type(*$C$DW$T$298)

$C$DW$T$65	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$1295)

$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)


$C$DW$T$299	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$299, DW_AT_name("TBCTL2_BITS")
	.dwattr $C$DW$T$299, DW_AT_byte_size(0x01)
$C$DW$1296	.dwtag  DW_TAG_member
	.dwattr $C$DW$1296, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1296, DW_AT_name("rsvd1")
	.dwattr $C$DW$1296, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1296, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1296, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1297	.dwtag  DW_TAG_member
	.dwattr $C$DW$1297, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1297, DW_AT_name("SELFCLRTRREM")
	.dwattr $C$DW$1297, DW_AT_TI_symbol_name("_SELFCLRTRREM")
	.dwattr $C$DW$1297, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1298	.dwtag  DW_TAG_member
	.dwattr $C$DW$1298, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1298, DW_AT_name("OSHTSYNCMODE")
	.dwattr $C$DW$1298, DW_AT_TI_symbol_name("_OSHTSYNCMODE")
	.dwattr $C$DW$1298, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1299	.dwtag  DW_TAG_member
	.dwattr $C$DW$1299, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1299, DW_AT_name("OSHTSYNC")
	.dwattr $C$DW$1299, DW_AT_TI_symbol_name("_OSHTSYNC")
	.dwattr $C$DW$1299, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1300	.dwtag  DW_TAG_member
	.dwattr $C$DW$1300, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1300, DW_AT_name("rsvd2")
	.dwattr $C$DW$1300, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1300, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1300, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1301	.dwtag  DW_TAG_member
	.dwattr $C$DW$1301, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1301, DW_AT_name("SYNCOSELX")
	.dwattr $C$DW$1301, DW_AT_TI_symbol_name("_SYNCOSELX")
	.dwattr $C$DW$1301, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1301, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1302	.dwtag  DW_TAG_member
	.dwattr $C$DW$1302, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1302, DW_AT_name("PRDLDSYNC")
	.dwattr $C$DW$1302, DW_AT_TI_symbol_name("_PRDLDSYNC")
	.dwattr $C$DW$1302, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1302, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1302, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$299


$C$DW$T$300	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$300, DW_AT_name("TBCTL2_REG")
	.dwattr $C$DW$T$300, DW_AT_byte_size(0x01)
$C$DW$1303	.dwtag  DW_TAG_member
	.dwattr $C$DW$1303, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1303, DW_AT_name("all")
	.dwattr $C$DW$1303, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1304	.dwtag  DW_TAG_member
	.dwattr $C$DW$1304, DW_AT_type(*$C$DW$T$299)
	.dwattr $C$DW$1304, DW_AT_name("bit")
	.dwattr $C$DW$1304, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1304, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$300


$C$DW$T$301	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$301, DW_AT_name("TBCTL_BITS")
	.dwattr $C$DW$T$301, DW_AT_byte_size(0x01)
$C$DW$1305	.dwtag  DW_TAG_member
	.dwattr $C$DW$1305, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1305, DW_AT_name("CTRMODE")
	.dwattr $C$DW$1305, DW_AT_TI_symbol_name("_CTRMODE")
	.dwattr $C$DW$1305, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1305, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1306	.dwtag  DW_TAG_member
	.dwattr $C$DW$1306, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1306, DW_AT_name("PHSEN")
	.dwattr $C$DW$1306, DW_AT_TI_symbol_name("_PHSEN")
	.dwattr $C$DW$1306, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1307	.dwtag  DW_TAG_member
	.dwattr $C$DW$1307, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1307, DW_AT_name("PRDLD")
	.dwattr $C$DW$1307, DW_AT_TI_symbol_name("_PRDLD")
	.dwattr $C$DW$1307, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1308	.dwtag  DW_TAG_member
	.dwattr $C$DW$1308, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1308, DW_AT_name("SYNCOSEL")
	.dwattr $C$DW$1308, DW_AT_TI_symbol_name("_SYNCOSEL")
	.dwattr $C$DW$1308, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1308, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1309	.dwtag  DW_TAG_member
	.dwattr $C$DW$1309, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1309, DW_AT_name("SWFSYNC")
	.dwattr $C$DW$1309, DW_AT_TI_symbol_name("_SWFSYNC")
	.dwattr $C$DW$1309, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1310	.dwtag  DW_TAG_member
	.dwattr $C$DW$1310, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1310, DW_AT_name("HSPCLKDIV")
	.dwattr $C$DW$1310, DW_AT_TI_symbol_name("_HSPCLKDIV")
	.dwattr $C$DW$1310, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1310, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1311	.dwtag  DW_TAG_member
	.dwattr $C$DW$1311, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1311, DW_AT_name("CLKDIV")
	.dwattr $C$DW$1311, DW_AT_TI_symbol_name("_CLKDIV")
	.dwattr $C$DW$1311, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1311, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1312	.dwtag  DW_TAG_member
	.dwattr $C$DW$1312, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1312, DW_AT_name("PHSDIR")
	.dwattr $C$DW$1312, DW_AT_TI_symbol_name("_PHSDIR")
	.dwattr $C$DW$1312, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1313	.dwtag  DW_TAG_member
	.dwattr $C$DW$1313, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1313, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$1313, DW_AT_TI_symbol_name("_FREE_SOFT")
	.dwattr $C$DW$1313, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1313, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1313, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$301


$C$DW$T$302	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$302, DW_AT_name("TBCTL_REG")
	.dwattr $C$DW$T$302, DW_AT_byte_size(0x01)
$C$DW$1314	.dwtag  DW_TAG_member
	.dwattr $C$DW$1314, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1314, DW_AT_name("all")
	.dwattr $C$DW$1314, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1315	.dwtag  DW_TAG_member
	.dwattr $C$DW$1315, DW_AT_type(*$C$DW$T$301)
	.dwattr $C$DW$1315, DW_AT_name("bit")
	.dwattr $C$DW$1315, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1315, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$302


$C$DW$T$303	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$303, DW_AT_name("TBPHS_BITS")
	.dwattr $C$DW$T$303, DW_AT_byte_size(0x02)
$C$DW$1316	.dwtag  DW_TAG_member
	.dwattr $C$DW$1316, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1316, DW_AT_name("TBPHSHR")
	.dwattr $C$DW$1316, DW_AT_TI_symbol_name("_TBPHSHR")
	.dwattr $C$DW$1316, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1316, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1317	.dwtag  DW_TAG_member
	.dwattr $C$DW$1317, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1317, DW_AT_name("TBPHS")
	.dwattr $C$DW$1317, DW_AT_TI_symbol_name("_TBPHS")
	.dwattr $C$DW$1317, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1317, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$303


$C$DW$T$304	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$304, DW_AT_name("TBPHS_REG")
	.dwattr $C$DW$T$304, DW_AT_byte_size(0x02)
$C$DW$1318	.dwtag  DW_TAG_member
	.dwattr $C$DW$1318, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$1318, DW_AT_name("all")
	.dwattr $C$DW$1318, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1319	.dwtag  DW_TAG_member
	.dwattr $C$DW$1319, DW_AT_type(*$C$DW$T$303)
	.dwattr $C$DW$1319, DW_AT_name("bit")
	.dwattr $C$DW$1319, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1319, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$304


$C$DW$T$305	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$305, DW_AT_name("TBSTS_BITS")
	.dwattr $C$DW$T$305, DW_AT_byte_size(0x01)
$C$DW$1320	.dwtag  DW_TAG_member
	.dwattr $C$DW$1320, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1320, DW_AT_name("CTRDIR")
	.dwattr $C$DW$1320, DW_AT_TI_symbol_name("_CTRDIR")
	.dwattr $C$DW$1320, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1321	.dwtag  DW_TAG_member
	.dwattr $C$DW$1321, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1321, DW_AT_name("SYNCI")
	.dwattr $C$DW$1321, DW_AT_TI_symbol_name("_SYNCI")
	.dwattr $C$DW$1321, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1322	.dwtag  DW_TAG_member
	.dwattr $C$DW$1322, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1322, DW_AT_name("CTRMAX")
	.dwattr $C$DW$1322, DW_AT_TI_symbol_name("_CTRMAX")
	.dwattr $C$DW$1322, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1323	.dwtag  DW_TAG_member
	.dwattr $C$DW$1323, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1323, DW_AT_name("rsvd1")
	.dwattr $C$DW$1323, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1323, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1323, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1323, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$305


$C$DW$T$306	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$306, DW_AT_name("TBSTS_REG")
	.dwattr $C$DW$T$306, DW_AT_byte_size(0x01)
$C$DW$1324	.dwtag  DW_TAG_member
	.dwattr $C$DW$1324, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1324, DW_AT_name("all")
	.dwattr $C$DW$1324, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1325	.dwtag  DW_TAG_member
	.dwattr $C$DW$1325, DW_AT_type(*$C$DW$T$305)
	.dwattr $C$DW$1325, DW_AT_name("bit")
	.dwattr $C$DW$1325, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1325, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$306


$C$DW$T$307	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$307, DW_AT_name("TRREM_BITS")
	.dwattr $C$DW$T$307, DW_AT_byte_size(0x01)
$C$DW$1326	.dwtag  DW_TAG_member
	.dwattr $C$DW$1326, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1326, DW_AT_name("TRREM")
	.dwattr $C$DW$1326, DW_AT_TI_symbol_name("_TRREM")
	.dwattr $C$DW$1326, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1326, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1327	.dwtag  DW_TAG_member
	.dwattr $C$DW$1327, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1327, DW_AT_name("rsvd1")
	.dwattr $C$DW$1327, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1327, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1327, DW_AT_bit_size(0x05)
	.dwattr $C$DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1327, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$307


$C$DW$T$308	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$308, DW_AT_name("TRREM_REG")
	.dwattr $C$DW$T$308, DW_AT_byte_size(0x01)
$C$DW$1328	.dwtag  DW_TAG_member
	.dwattr $C$DW$1328, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1328, DW_AT_name("all")
	.dwattr $C$DW$1328, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1329	.dwtag  DW_TAG_member
	.dwattr $C$DW$1329, DW_AT_type(*$C$DW$T$307)
	.dwattr $C$DW$1329, DW_AT_name("bit")
	.dwattr $C$DW$1329, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1329, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$308


$C$DW$T$309	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$309, DW_AT_name("TZCBCCLR_BITS")
	.dwattr $C$DW$T$309, DW_AT_byte_size(0x01)
$C$DW$1330	.dwtag  DW_TAG_member
	.dwattr $C$DW$1330, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1330, DW_AT_name("CBC1")
	.dwattr $C$DW$1330, DW_AT_TI_symbol_name("_CBC1")
	.dwattr $C$DW$1330, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1331	.dwtag  DW_TAG_member
	.dwattr $C$DW$1331, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1331, DW_AT_name("CBC2")
	.dwattr $C$DW$1331, DW_AT_TI_symbol_name("_CBC2")
	.dwattr $C$DW$1331, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1332	.dwtag  DW_TAG_member
	.dwattr $C$DW$1332, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1332, DW_AT_name("CBC3")
	.dwattr $C$DW$1332, DW_AT_TI_symbol_name("_CBC3")
	.dwattr $C$DW$1332, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1333	.dwtag  DW_TAG_member
	.dwattr $C$DW$1333, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1333, DW_AT_name("CBC4")
	.dwattr $C$DW$1333, DW_AT_TI_symbol_name("_CBC4")
	.dwattr $C$DW$1333, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1334	.dwtag  DW_TAG_member
	.dwattr $C$DW$1334, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1334, DW_AT_name("CBC5")
	.dwattr $C$DW$1334, DW_AT_TI_symbol_name("_CBC5")
	.dwattr $C$DW$1334, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1335	.dwtag  DW_TAG_member
	.dwattr $C$DW$1335, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1335, DW_AT_name("CBC6")
	.dwattr $C$DW$1335, DW_AT_TI_symbol_name("_CBC6")
	.dwattr $C$DW$1335, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1336	.dwtag  DW_TAG_member
	.dwattr $C$DW$1336, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1336, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1336, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1336, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1337	.dwtag  DW_TAG_member
	.dwattr $C$DW$1337, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1337, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1337, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1337, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1338	.dwtag  DW_TAG_member
	.dwattr $C$DW$1338, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1338, DW_AT_name("rsvd1")
	.dwattr $C$DW$1338, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1338, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1338, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1338, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$309


$C$DW$T$310	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$310, DW_AT_name("TZCBCCLR_REG")
	.dwattr $C$DW$T$310, DW_AT_byte_size(0x01)
$C$DW$1339	.dwtag  DW_TAG_member
	.dwattr $C$DW$1339, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1339, DW_AT_name("all")
	.dwattr $C$DW$1339, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1340	.dwtag  DW_TAG_member
	.dwattr $C$DW$1340, DW_AT_type(*$C$DW$T$309)
	.dwattr $C$DW$1340, DW_AT_name("bit")
	.dwattr $C$DW$1340, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1340, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$310


$C$DW$T$311	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$311, DW_AT_name("TZCBCFLG_BITS")
	.dwattr $C$DW$T$311, DW_AT_byte_size(0x01)
$C$DW$1341	.dwtag  DW_TAG_member
	.dwattr $C$DW$1341, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1341, DW_AT_name("CBC1")
	.dwattr $C$DW$1341, DW_AT_TI_symbol_name("_CBC1")
	.dwattr $C$DW$1341, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1342	.dwtag  DW_TAG_member
	.dwattr $C$DW$1342, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1342, DW_AT_name("CBC2")
	.dwattr $C$DW$1342, DW_AT_TI_symbol_name("_CBC2")
	.dwattr $C$DW$1342, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1343	.dwtag  DW_TAG_member
	.dwattr $C$DW$1343, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1343, DW_AT_name("CBC3")
	.dwattr $C$DW$1343, DW_AT_TI_symbol_name("_CBC3")
	.dwattr $C$DW$1343, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1344	.dwtag  DW_TAG_member
	.dwattr $C$DW$1344, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1344, DW_AT_name("CBC4")
	.dwattr $C$DW$1344, DW_AT_TI_symbol_name("_CBC4")
	.dwattr $C$DW$1344, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1345	.dwtag  DW_TAG_member
	.dwattr $C$DW$1345, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1345, DW_AT_name("CBC5")
	.dwattr $C$DW$1345, DW_AT_TI_symbol_name("_CBC5")
	.dwattr $C$DW$1345, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1346	.dwtag  DW_TAG_member
	.dwattr $C$DW$1346, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1346, DW_AT_name("CBC6")
	.dwattr $C$DW$1346, DW_AT_TI_symbol_name("_CBC6")
	.dwattr $C$DW$1346, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1347	.dwtag  DW_TAG_member
	.dwattr $C$DW$1347, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1347, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1347, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1347, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1348	.dwtag  DW_TAG_member
	.dwattr $C$DW$1348, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1348, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1348, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1348, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1349	.dwtag  DW_TAG_member
	.dwattr $C$DW$1349, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1349, DW_AT_name("rsvd1")
	.dwattr $C$DW$1349, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1349, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1349, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1349, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$311


$C$DW$T$312	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$312, DW_AT_name("TZCBCFLG_REG")
	.dwattr $C$DW$T$312, DW_AT_byte_size(0x01)
$C$DW$1350	.dwtag  DW_TAG_member
	.dwattr $C$DW$1350, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1350, DW_AT_name("all")
	.dwattr $C$DW$1350, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1351	.dwtag  DW_TAG_member
	.dwattr $C$DW$1351, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$1351, DW_AT_name("bit")
	.dwattr $C$DW$1351, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$312


$C$DW$T$313	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$313, DW_AT_name("TZCLR_BITS")
	.dwattr $C$DW$T$313, DW_AT_byte_size(0x01)
$C$DW$1352	.dwtag  DW_TAG_member
	.dwattr $C$DW$1352, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1352, DW_AT_name("INT")
	.dwattr $C$DW$1352, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$1352, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1353	.dwtag  DW_TAG_member
	.dwattr $C$DW$1353, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1353, DW_AT_name("CBC")
	.dwattr $C$DW$1353, DW_AT_TI_symbol_name("_CBC")
	.dwattr $C$DW$1353, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1354	.dwtag  DW_TAG_member
	.dwattr $C$DW$1354, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1354, DW_AT_name("OST")
	.dwattr $C$DW$1354, DW_AT_TI_symbol_name("_OST")
	.dwattr $C$DW$1354, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1355	.dwtag  DW_TAG_member
	.dwattr $C$DW$1355, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1355, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1355, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1355, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1356	.dwtag  DW_TAG_member
	.dwattr $C$DW$1356, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1356, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1356, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1356, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1357	.dwtag  DW_TAG_member
	.dwattr $C$DW$1357, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1357, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1357, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1357, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1358	.dwtag  DW_TAG_member
	.dwattr $C$DW$1358, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1358, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1358, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1358, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1359	.dwtag  DW_TAG_member
	.dwattr $C$DW$1359, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1359, DW_AT_name("rsvd1")
	.dwattr $C$DW$1359, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1359, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1359, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1360	.dwtag  DW_TAG_member
	.dwattr $C$DW$1360, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1360, DW_AT_name("CBCPULSE")
	.dwattr $C$DW$1360, DW_AT_TI_symbol_name("_CBCPULSE")
	.dwattr $C$DW$1360, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1360, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1360, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$313


$C$DW$T$314	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$314, DW_AT_name("TZCLR_REG")
	.dwattr $C$DW$T$314, DW_AT_byte_size(0x01)
$C$DW$1361	.dwtag  DW_TAG_member
	.dwattr $C$DW$1361, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1361, DW_AT_name("all")
	.dwattr $C$DW$1361, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1362	.dwtag  DW_TAG_member
	.dwattr $C$DW$1362, DW_AT_type(*$C$DW$T$313)
	.dwattr $C$DW$1362, DW_AT_name("bit")
	.dwattr $C$DW$1362, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1362, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$314


$C$DW$T$315	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$315, DW_AT_name("TZCTL2_BITS")
	.dwattr $C$DW$T$315, DW_AT_byte_size(0x01)
$C$DW$1363	.dwtag  DW_TAG_member
	.dwattr $C$DW$1363, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1363, DW_AT_name("TZAU")
	.dwattr $C$DW$1363, DW_AT_TI_symbol_name("_TZAU")
	.dwattr $C$DW$1363, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1363, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1364	.dwtag  DW_TAG_member
	.dwattr $C$DW$1364, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1364, DW_AT_name("TZAD")
	.dwattr $C$DW$1364, DW_AT_TI_symbol_name("_TZAD")
	.dwattr $C$DW$1364, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1364, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1365	.dwtag  DW_TAG_member
	.dwattr $C$DW$1365, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1365, DW_AT_name("TZBU")
	.dwattr $C$DW$1365, DW_AT_TI_symbol_name("_TZBU")
	.dwattr $C$DW$1365, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1365, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1366	.dwtag  DW_TAG_member
	.dwattr $C$DW$1366, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1366, DW_AT_name("TZBD")
	.dwattr $C$DW$1366, DW_AT_TI_symbol_name("_TZBD")
	.dwattr $C$DW$1366, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1366, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1367	.dwtag  DW_TAG_member
	.dwattr $C$DW$1367, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1367, DW_AT_name("rsvd1")
	.dwattr $C$DW$1367, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1367, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1367, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1368	.dwtag  DW_TAG_member
	.dwattr $C$DW$1368, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1368, DW_AT_name("ETZE")
	.dwattr $C$DW$1368, DW_AT_TI_symbol_name("_ETZE")
	.dwattr $C$DW$1368, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1368, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$315


$C$DW$T$316	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$316, DW_AT_name("TZCTL2_REG")
	.dwattr $C$DW$T$316, DW_AT_byte_size(0x01)
$C$DW$1369	.dwtag  DW_TAG_member
	.dwattr $C$DW$1369, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1369, DW_AT_name("all")
	.dwattr $C$DW$1369, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1370	.dwtag  DW_TAG_member
	.dwattr $C$DW$1370, DW_AT_type(*$C$DW$T$315)
	.dwattr $C$DW$1370, DW_AT_name("bit")
	.dwattr $C$DW$1370, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1370, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$316


$C$DW$T$317	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$317, DW_AT_name("TZCTLDCA_BITS")
	.dwattr $C$DW$T$317, DW_AT_byte_size(0x01)
$C$DW$1371	.dwtag  DW_TAG_member
	.dwattr $C$DW$1371, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1371, DW_AT_name("DCAEVT1U")
	.dwattr $C$DW$1371, DW_AT_TI_symbol_name("_DCAEVT1U")
	.dwattr $C$DW$1371, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1371, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1372	.dwtag  DW_TAG_member
	.dwattr $C$DW$1372, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1372, DW_AT_name("DCAEVT1D")
	.dwattr $C$DW$1372, DW_AT_TI_symbol_name("_DCAEVT1D")
	.dwattr $C$DW$1372, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1372, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1373	.dwtag  DW_TAG_member
	.dwattr $C$DW$1373, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1373, DW_AT_name("DCAEVT2U")
	.dwattr $C$DW$1373, DW_AT_TI_symbol_name("_DCAEVT2U")
	.dwattr $C$DW$1373, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1373, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1374	.dwtag  DW_TAG_member
	.dwattr $C$DW$1374, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1374, DW_AT_name("DCAEVT2D")
	.dwattr $C$DW$1374, DW_AT_TI_symbol_name("_DCAEVT2D")
	.dwattr $C$DW$1374, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1374, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1375	.dwtag  DW_TAG_member
	.dwattr $C$DW$1375, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1375, DW_AT_name("rsvd1")
	.dwattr $C$DW$1375, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1375, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1375, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1375, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$317


$C$DW$T$318	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$318, DW_AT_name("TZCTLDCA_REG")
	.dwattr $C$DW$T$318, DW_AT_byte_size(0x01)
$C$DW$1376	.dwtag  DW_TAG_member
	.dwattr $C$DW$1376, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1376, DW_AT_name("all")
	.dwattr $C$DW$1376, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1377	.dwtag  DW_TAG_member
	.dwattr $C$DW$1377, DW_AT_type(*$C$DW$T$317)
	.dwattr $C$DW$1377, DW_AT_name("bit")
	.dwattr $C$DW$1377, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1377, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$318


$C$DW$T$319	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$319, DW_AT_name("TZCTLDCB_BITS")
	.dwattr $C$DW$T$319, DW_AT_byte_size(0x01)
$C$DW$1378	.dwtag  DW_TAG_member
	.dwattr $C$DW$1378, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1378, DW_AT_name("DCBEVT1U")
	.dwattr $C$DW$1378, DW_AT_TI_symbol_name("_DCBEVT1U")
	.dwattr $C$DW$1378, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1378, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1379	.dwtag  DW_TAG_member
	.dwattr $C$DW$1379, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1379, DW_AT_name("DCBEVT1D")
	.dwattr $C$DW$1379, DW_AT_TI_symbol_name("_DCBEVT1D")
	.dwattr $C$DW$1379, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1379, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1380	.dwtag  DW_TAG_member
	.dwattr $C$DW$1380, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1380, DW_AT_name("DCBEVT2U")
	.dwattr $C$DW$1380, DW_AT_TI_symbol_name("_DCBEVT2U")
	.dwattr $C$DW$1380, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1380, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1381	.dwtag  DW_TAG_member
	.dwattr $C$DW$1381, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1381, DW_AT_name("DCBEVT2D")
	.dwattr $C$DW$1381, DW_AT_TI_symbol_name("_DCBEVT2D")
	.dwattr $C$DW$1381, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1381, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1382	.dwtag  DW_TAG_member
	.dwattr $C$DW$1382, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1382, DW_AT_name("rsvd1")
	.dwattr $C$DW$1382, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1382, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1382, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1382, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$319


$C$DW$T$320	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$320, DW_AT_name("TZCTLDCB_REG")
	.dwattr $C$DW$T$320, DW_AT_byte_size(0x01)
$C$DW$1383	.dwtag  DW_TAG_member
	.dwattr $C$DW$1383, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1383, DW_AT_name("all")
	.dwattr $C$DW$1383, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1384	.dwtag  DW_TAG_member
	.dwattr $C$DW$1384, DW_AT_type(*$C$DW$T$319)
	.dwattr $C$DW$1384, DW_AT_name("bit")
	.dwattr $C$DW$1384, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1384, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$320


$C$DW$T$321	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$321, DW_AT_name("TZCTL_BITS")
	.dwattr $C$DW$T$321, DW_AT_byte_size(0x01)
$C$DW$1385	.dwtag  DW_TAG_member
	.dwattr $C$DW$1385, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1385, DW_AT_name("TZA")
	.dwattr $C$DW$1385, DW_AT_TI_symbol_name("_TZA")
	.dwattr $C$DW$1385, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1385, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1386	.dwtag  DW_TAG_member
	.dwattr $C$DW$1386, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1386, DW_AT_name("TZB")
	.dwattr $C$DW$1386, DW_AT_TI_symbol_name("_TZB")
	.dwattr $C$DW$1386, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1386, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1387	.dwtag  DW_TAG_member
	.dwattr $C$DW$1387, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1387, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1387, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1387, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1387, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1388	.dwtag  DW_TAG_member
	.dwattr $C$DW$1388, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1388, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1388, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1388, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1388, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1389	.dwtag  DW_TAG_member
	.dwattr $C$DW$1389, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1389, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1389, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1389, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1389, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1390	.dwtag  DW_TAG_member
	.dwattr $C$DW$1390, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1390, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1390, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1390, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1390, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1391	.dwtag  DW_TAG_member
	.dwattr $C$DW$1391, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1391, DW_AT_name("rsvd1")
	.dwattr $C$DW$1391, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1391, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1391, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1391, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$321


$C$DW$T$322	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$322, DW_AT_name("TZCTL_REG")
	.dwattr $C$DW$T$322, DW_AT_byte_size(0x01)
$C$DW$1392	.dwtag  DW_TAG_member
	.dwattr $C$DW$1392, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1392, DW_AT_name("all")
	.dwattr $C$DW$1392, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1393	.dwtag  DW_TAG_member
	.dwattr $C$DW$1393, DW_AT_type(*$C$DW$T$321)
	.dwattr $C$DW$1393, DW_AT_name("bit")
	.dwattr $C$DW$1393, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1393, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$322


$C$DW$T$323	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$323, DW_AT_name("TZDCSEL_BITS")
	.dwattr $C$DW$T$323, DW_AT_byte_size(0x01)
$C$DW$1394	.dwtag  DW_TAG_member
	.dwattr $C$DW$1394, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1394, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1394, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1394, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1394, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1395	.dwtag  DW_TAG_member
	.dwattr $C$DW$1395, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1395, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1395, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1395, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1395, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1396	.dwtag  DW_TAG_member
	.dwattr $C$DW$1396, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1396, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1396, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1396, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1396, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1397	.dwtag  DW_TAG_member
	.dwattr $C$DW$1397, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1397, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1397, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1397, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1397, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1398	.dwtag  DW_TAG_member
	.dwattr $C$DW$1398, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1398, DW_AT_name("rsvd1")
	.dwattr $C$DW$1398, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1398, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1398, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1398, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$323


$C$DW$T$324	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$324, DW_AT_name("TZDCSEL_REG")
	.dwattr $C$DW$T$324, DW_AT_byte_size(0x01)
$C$DW$1399	.dwtag  DW_TAG_member
	.dwattr $C$DW$1399, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1399, DW_AT_name("all")
	.dwattr $C$DW$1399, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1400	.dwtag  DW_TAG_member
	.dwattr $C$DW$1400, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$1400, DW_AT_name("bit")
	.dwattr $C$DW$1400, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1400, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$324


$C$DW$T$325	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$325, DW_AT_name("TZEINT_BITS")
	.dwattr $C$DW$T$325, DW_AT_byte_size(0x01)
$C$DW$1401	.dwtag  DW_TAG_member
	.dwattr $C$DW$1401, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1401, DW_AT_name("rsvd1")
	.dwattr $C$DW$1401, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1401, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1402	.dwtag  DW_TAG_member
	.dwattr $C$DW$1402, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1402, DW_AT_name("CBC")
	.dwattr $C$DW$1402, DW_AT_TI_symbol_name("_CBC")
	.dwattr $C$DW$1402, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1403	.dwtag  DW_TAG_member
	.dwattr $C$DW$1403, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1403, DW_AT_name("OST")
	.dwattr $C$DW$1403, DW_AT_TI_symbol_name("_OST")
	.dwattr $C$DW$1403, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1404	.dwtag  DW_TAG_member
	.dwattr $C$DW$1404, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1404, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1404, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1404, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1405	.dwtag  DW_TAG_member
	.dwattr $C$DW$1405, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1405, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1405, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1405, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1406	.dwtag  DW_TAG_member
	.dwattr $C$DW$1406, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1406, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1406, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1406, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1407	.dwtag  DW_TAG_member
	.dwattr $C$DW$1407, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1407, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1407, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1407, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1408	.dwtag  DW_TAG_member
	.dwattr $C$DW$1408, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1408, DW_AT_name("rsvd2")
	.dwattr $C$DW$1408, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1408, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1408, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1408, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$325


$C$DW$T$326	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$326, DW_AT_name("TZEINT_REG")
	.dwattr $C$DW$T$326, DW_AT_byte_size(0x01)
$C$DW$1409	.dwtag  DW_TAG_member
	.dwattr $C$DW$1409, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1409, DW_AT_name("all")
	.dwattr $C$DW$1409, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1410	.dwtag  DW_TAG_member
	.dwattr $C$DW$1410, DW_AT_type(*$C$DW$T$325)
	.dwattr $C$DW$1410, DW_AT_name("bit")
	.dwattr $C$DW$1410, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1410, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$326


$C$DW$T$327	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$327, DW_AT_name("TZFLG_BITS")
	.dwattr $C$DW$T$327, DW_AT_byte_size(0x01)
$C$DW$1411	.dwtag  DW_TAG_member
	.dwattr $C$DW$1411, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1411, DW_AT_name("INT")
	.dwattr $C$DW$1411, DW_AT_TI_symbol_name("_INT")
	.dwattr $C$DW$1411, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1412	.dwtag  DW_TAG_member
	.dwattr $C$DW$1412, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1412, DW_AT_name("CBC")
	.dwattr $C$DW$1412, DW_AT_TI_symbol_name("_CBC")
	.dwattr $C$DW$1412, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1413	.dwtag  DW_TAG_member
	.dwattr $C$DW$1413, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1413, DW_AT_name("OST")
	.dwattr $C$DW$1413, DW_AT_TI_symbol_name("_OST")
	.dwattr $C$DW$1413, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1414	.dwtag  DW_TAG_member
	.dwattr $C$DW$1414, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1414, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1414, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1414, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1415	.dwtag  DW_TAG_member
	.dwattr $C$DW$1415, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1415, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1415, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1415, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1416	.dwtag  DW_TAG_member
	.dwattr $C$DW$1416, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1416, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1416, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1416, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1417	.dwtag  DW_TAG_member
	.dwattr $C$DW$1417, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1417, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1417, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1417, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1418	.dwtag  DW_TAG_member
	.dwattr $C$DW$1418, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1418, DW_AT_name("rsvd1")
	.dwattr $C$DW$1418, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1418, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1418, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1418, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$327


$C$DW$T$328	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$328, DW_AT_name("TZFLG_REG")
	.dwattr $C$DW$T$328, DW_AT_byte_size(0x01)
$C$DW$1419	.dwtag  DW_TAG_member
	.dwattr $C$DW$1419, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1419, DW_AT_name("all")
	.dwattr $C$DW$1419, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1420	.dwtag  DW_TAG_member
	.dwattr $C$DW$1420, DW_AT_type(*$C$DW$T$327)
	.dwattr $C$DW$1420, DW_AT_name("bit")
	.dwattr $C$DW$1420, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1420, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$328


$C$DW$T$329	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$329, DW_AT_name("TZFRC_BITS")
	.dwattr $C$DW$T$329, DW_AT_byte_size(0x01)
$C$DW$1421	.dwtag  DW_TAG_member
	.dwattr $C$DW$1421, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1421, DW_AT_name("rsvd1")
	.dwattr $C$DW$1421, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1421, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1422	.dwtag  DW_TAG_member
	.dwattr $C$DW$1422, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1422, DW_AT_name("CBC")
	.dwattr $C$DW$1422, DW_AT_TI_symbol_name("_CBC")
	.dwattr $C$DW$1422, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1423	.dwtag  DW_TAG_member
	.dwattr $C$DW$1423, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1423, DW_AT_name("OST")
	.dwattr $C$DW$1423, DW_AT_TI_symbol_name("_OST")
	.dwattr $C$DW$1423, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1424	.dwtag  DW_TAG_member
	.dwattr $C$DW$1424, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1424, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1424, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1424, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1425	.dwtag  DW_TAG_member
	.dwattr $C$DW$1425, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1425, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1425, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1425, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1426	.dwtag  DW_TAG_member
	.dwattr $C$DW$1426, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1426, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1426, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1426, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1427	.dwtag  DW_TAG_member
	.dwattr $C$DW$1427, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1427, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1427, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1427, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1428	.dwtag  DW_TAG_member
	.dwattr $C$DW$1428, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1428, DW_AT_name("rsvd2")
	.dwattr $C$DW$1428, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1428, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1428, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1428, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$329


$C$DW$T$330	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$330, DW_AT_name("TZFRC_REG")
	.dwattr $C$DW$T$330, DW_AT_byte_size(0x01)
$C$DW$1429	.dwtag  DW_TAG_member
	.dwattr $C$DW$1429, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1429, DW_AT_name("all")
	.dwattr $C$DW$1429, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1430	.dwtag  DW_TAG_member
	.dwattr $C$DW$1430, DW_AT_type(*$C$DW$T$329)
	.dwattr $C$DW$1430, DW_AT_name("bit")
	.dwattr $C$DW$1430, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1430, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$330


$C$DW$T$331	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$331, DW_AT_name("TZOSTCLR_BITS")
	.dwattr $C$DW$T$331, DW_AT_byte_size(0x01)
$C$DW$1431	.dwtag  DW_TAG_member
	.dwattr $C$DW$1431, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1431, DW_AT_name("OST1")
	.dwattr $C$DW$1431, DW_AT_TI_symbol_name("_OST1")
	.dwattr $C$DW$1431, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1432	.dwtag  DW_TAG_member
	.dwattr $C$DW$1432, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1432, DW_AT_name("OST2")
	.dwattr $C$DW$1432, DW_AT_TI_symbol_name("_OST2")
	.dwattr $C$DW$1432, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1433	.dwtag  DW_TAG_member
	.dwattr $C$DW$1433, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1433, DW_AT_name("OST3")
	.dwattr $C$DW$1433, DW_AT_TI_symbol_name("_OST3")
	.dwattr $C$DW$1433, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1434	.dwtag  DW_TAG_member
	.dwattr $C$DW$1434, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1434, DW_AT_name("OST4")
	.dwattr $C$DW$1434, DW_AT_TI_symbol_name("_OST4")
	.dwattr $C$DW$1434, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1435	.dwtag  DW_TAG_member
	.dwattr $C$DW$1435, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1435, DW_AT_name("OST5")
	.dwattr $C$DW$1435, DW_AT_TI_symbol_name("_OST5")
	.dwattr $C$DW$1435, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1436	.dwtag  DW_TAG_member
	.dwattr $C$DW$1436, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1436, DW_AT_name("OST6")
	.dwattr $C$DW$1436, DW_AT_TI_symbol_name("_OST6")
	.dwattr $C$DW$1436, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1437	.dwtag  DW_TAG_member
	.dwattr $C$DW$1437, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1437, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1437, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1437, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1438	.dwtag  DW_TAG_member
	.dwattr $C$DW$1438, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1438, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1438, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1438, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1439	.dwtag  DW_TAG_member
	.dwattr $C$DW$1439, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1439, DW_AT_name("rsvd1")
	.dwattr $C$DW$1439, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1439, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1439, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1439, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$331


$C$DW$T$332	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$332, DW_AT_name("TZOSTCLR_REG")
	.dwattr $C$DW$T$332, DW_AT_byte_size(0x01)
$C$DW$1440	.dwtag  DW_TAG_member
	.dwattr $C$DW$1440, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1440, DW_AT_name("all")
	.dwattr $C$DW$1440, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1441	.dwtag  DW_TAG_member
	.dwattr $C$DW$1441, DW_AT_type(*$C$DW$T$331)
	.dwattr $C$DW$1441, DW_AT_name("bit")
	.dwattr $C$DW$1441, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1441, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$332


$C$DW$T$333	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$333, DW_AT_name("TZOSTFLG_BITS")
	.dwattr $C$DW$T$333, DW_AT_byte_size(0x01)
$C$DW$1442	.dwtag  DW_TAG_member
	.dwattr $C$DW$1442, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1442, DW_AT_name("OST1")
	.dwattr $C$DW$1442, DW_AT_TI_symbol_name("_OST1")
	.dwattr $C$DW$1442, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1443	.dwtag  DW_TAG_member
	.dwattr $C$DW$1443, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1443, DW_AT_name("OST2")
	.dwattr $C$DW$1443, DW_AT_TI_symbol_name("_OST2")
	.dwattr $C$DW$1443, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1444	.dwtag  DW_TAG_member
	.dwattr $C$DW$1444, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1444, DW_AT_name("OST3")
	.dwattr $C$DW$1444, DW_AT_TI_symbol_name("_OST3")
	.dwattr $C$DW$1444, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1445	.dwtag  DW_TAG_member
	.dwattr $C$DW$1445, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1445, DW_AT_name("OST4")
	.dwattr $C$DW$1445, DW_AT_TI_symbol_name("_OST4")
	.dwattr $C$DW$1445, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1446	.dwtag  DW_TAG_member
	.dwattr $C$DW$1446, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1446, DW_AT_name("OST5")
	.dwattr $C$DW$1446, DW_AT_TI_symbol_name("_OST5")
	.dwattr $C$DW$1446, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1447	.dwtag  DW_TAG_member
	.dwattr $C$DW$1447, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1447, DW_AT_name("OST6")
	.dwattr $C$DW$1447, DW_AT_TI_symbol_name("_OST6")
	.dwattr $C$DW$1447, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1448	.dwtag  DW_TAG_member
	.dwattr $C$DW$1448, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1448, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1448, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1448, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1449	.dwtag  DW_TAG_member
	.dwattr $C$DW$1449, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1449, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1449, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1449, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1450	.dwtag  DW_TAG_member
	.dwattr $C$DW$1450, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1450, DW_AT_name("rsvd1")
	.dwattr $C$DW$1450, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1450, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1450, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1450, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$333


$C$DW$T$334	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$334, DW_AT_name("TZOSTFLG_REG")
	.dwattr $C$DW$T$334, DW_AT_byte_size(0x01)
$C$DW$1451	.dwtag  DW_TAG_member
	.dwattr $C$DW$1451, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1451, DW_AT_name("all")
	.dwattr $C$DW$1451, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1452	.dwtag  DW_TAG_member
	.dwattr $C$DW$1452, DW_AT_type(*$C$DW$T$333)
	.dwattr $C$DW$1452, DW_AT_name("bit")
	.dwattr $C$DW$1452, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1452, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$334


$C$DW$T$335	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$335, DW_AT_name("TZSEL_BITS")
	.dwattr $C$DW$T$335, DW_AT_byte_size(0x01)
$C$DW$1453	.dwtag  DW_TAG_member
	.dwattr $C$DW$1453, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1453, DW_AT_name("CBC1")
	.dwattr $C$DW$1453, DW_AT_TI_symbol_name("_CBC1")
	.dwattr $C$DW$1453, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1454	.dwtag  DW_TAG_member
	.dwattr $C$DW$1454, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1454, DW_AT_name("CBC2")
	.dwattr $C$DW$1454, DW_AT_TI_symbol_name("_CBC2")
	.dwattr $C$DW$1454, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1455	.dwtag  DW_TAG_member
	.dwattr $C$DW$1455, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1455, DW_AT_name("CBC3")
	.dwattr $C$DW$1455, DW_AT_TI_symbol_name("_CBC3")
	.dwattr $C$DW$1455, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1456	.dwtag  DW_TAG_member
	.dwattr $C$DW$1456, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1456, DW_AT_name("CBC4")
	.dwattr $C$DW$1456, DW_AT_TI_symbol_name("_CBC4")
	.dwattr $C$DW$1456, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1457	.dwtag  DW_TAG_member
	.dwattr $C$DW$1457, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1457, DW_AT_name("CBC5")
	.dwattr $C$DW$1457, DW_AT_TI_symbol_name("_CBC5")
	.dwattr $C$DW$1457, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1458	.dwtag  DW_TAG_member
	.dwattr $C$DW$1458, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1458, DW_AT_name("CBC6")
	.dwattr $C$DW$1458, DW_AT_TI_symbol_name("_CBC6")
	.dwattr $C$DW$1458, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1459	.dwtag  DW_TAG_member
	.dwattr $C$DW$1459, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1459, DW_AT_name("DCAEVT2")
	.dwattr $C$DW$1459, DW_AT_TI_symbol_name("_DCAEVT2")
	.dwattr $C$DW$1459, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1460	.dwtag  DW_TAG_member
	.dwattr $C$DW$1460, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1460, DW_AT_name("DCBEVT2")
	.dwattr $C$DW$1460, DW_AT_TI_symbol_name("_DCBEVT2")
	.dwattr $C$DW$1460, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1461	.dwtag  DW_TAG_member
	.dwattr $C$DW$1461, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1461, DW_AT_name("OSHT1")
	.dwattr $C$DW$1461, DW_AT_TI_symbol_name("_OSHT1")
	.dwattr $C$DW$1461, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1462	.dwtag  DW_TAG_member
	.dwattr $C$DW$1462, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1462, DW_AT_name("OSHT2")
	.dwattr $C$DW$1462, DW_AT_TI_symbol_name("_OSHT2")
	.dwattr $C$DW$1462, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1463	.dwtag  DW_TAG_member
	.dwattr $C$DW$1463, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1463, DW_AT_name("OSHT3")
	.dwattr $C$DW$1463, DW_AT_TI_symbol_name("_OSHT3")
	.dwattr $C$DW$1463, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1464	.dwtag  DW_TAG_member
	.dwattr $C$DW$1464, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1464, DW_AT_name("OSHT4")
	.dwattr $C$DW$1464, DW_AT_TI_symbol_name("_OSHT4")
	.dwattr $C$DW$1464, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1465	.dwtag  DW_TAG_member
	.dwattr $C$DW$1465, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1465, DW_AT_name("OSHT5")
	.dwattr $C$DW$1465, DW_AT_TI_symbol_name("_OSHT5")
	.dwattr $C$DW$1465, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1466	.dwtag  DW_TAG_member
	.dwattr $C$DW$1466, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1466, DW_AT_name("OSHT6")
	.dwattr $C$DW$1466, DW_AT_TI_symbol_name("_OSHT6")
	.dwattr $C$DW$1466, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1467	.dwtag  DW_TAG_member
	.dwattr $C$DW$1467, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1467, DW_AT_name("DCAEVT1")
	.dwattr $C$DW$1467, DW_AT_TI_symbol_name("_DCAEVT1")
	.dwattr $C$DW$1467, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1468	.dwtag  DW_TAG_member
	.dwattr $C$DW$1468, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1468, DW_AT_name("DCBEVT1")
	.dwattr $C$DW$1468, DW_AT_TI_symbol_name("_DCBEVT1")
	.dwattr $C$DW$1468, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1468, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$335


$C$DW$T$336	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$336, DW_AT_name("TZSEL_REG")
	.dwattr $C$DW$T$336, DW_AT_byte_size(0x01)
$C$DW$1469	.dwtag  DW_TAG_member
	.dwattr $C$DW$1469, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1469, DW_AT_name("all")
	.dwattr $C$DW$1469, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1470	.dwtag  DW_TAG_member
	.dwattr $C$DW$1470, DW_AT_type(*$C$DW$T$335)
	.dwattr $C$DW$1470, DW_AT_name("bit")
	.dwattr $C$DW$1470, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1470, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$336

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

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("Uint16")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)


$C$DW$T$137	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x05)
$C$DW$1471	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1471, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$137


$C$DW$T$214	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$214, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$214, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$214, DW_AT_byte_size(0x02)
$C$DW$1472	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1472, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$214


$C$DW$T$215	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$215, DW_AT_byte_size(0x0b)
$C$DW$1473	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1473, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$215


$C$DW$T$216	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$216, DW_AT_byte_size(0x04)
$C$DW$1474	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1474, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$216


$C$DW$T$217	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$217, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$217, DW_AT_byte_size(0x06)
$C$DW$1475	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1475, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$217


$C$DW$T$218	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$218, DW_AT_byte_size(0x03)
$C$DW$1476	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1476, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$218


$C$DW$T$219	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$219, DW_AT_byte_size(0x0c)
$C$DW$1477	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1477, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$219


$C$DW$T$220	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$220, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$220, DW_AT_byte_size(0x08)
$C$DW$1478	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1478, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$220


$C$DW$T$221	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$221, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$221, DW_AT_byte_size(0x2a)
$C$DW$1479	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1479, DW_AT_upper_bound(0x29)

	.dwendtag $C$DW$T$221

$C$DW$T$346	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$346, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$346, DW_AT_address_class(0x20)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)

$C$DW$1480	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1480, DW_AT_type(*$C$DW$T$74)

$C$DW$T$75	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$1480)

$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x20)

$C$DW$1481	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1481, DW_AT_type(*$C$DW$T$74)

$C$DW$T$352	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$352, DW_AT_type(*$C$DW$1481)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("int32")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("Uint32")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$1482	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1482, DW_AT_type(*$C$DW$T$70)

$C$DW$T$71	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$1482)

$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)

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
	.dwattr $C$DW$T$19, DW_AT_name("_iq")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("_iq21")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("float32")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)


$C$DW$T$337	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$337, DW_AT_name("currentLoopPars")
	.dwattr $C$DW$T$337, DW_AT_byte_size(0x22)
$C$DW$1483	.dwtag  DW_TAG_member
	.dwattr $C$DW$1483, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1483, DW_AT_name("CARRIER_MID")
	.dwattr $C$DW$1483, DW_AT_TI_symbol_name("_CARRIER_MID")
	.dwattr $C$DW$1483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1484	.dwtag  DW_TAG_member
	.dwattr $C$DW$1484, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1484, DW_AT_name("ADC_SCALE")
	.dwattr $C$DW$1484, DW_AT_TI_symbol_name("_ADC_SCALE")
	.dwattr $C$DW$1484, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1485	.dwtag  DW_TAG_member
	.dwattr $C$DW$1485, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1485, DW_AT_name("cmidsqrt3")
	.dwattr $C$DW$1485, DW_AT_TI_symbol_name("_cmidsqrt3")
	.dwattr $C$DW$1485, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1486	.dwtag  DW_TAG_member
	.dwattr $C$DW$1486, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1486, DW_AT_name("tSamp")
	.dwattr $C$DW$1486, DW_AT_TI_symbol_name("_tSamp")
	.dwattr $C$DW$1486, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1487	.dwtag  DW_TAG_member
	.dwattr $C$DW$1487, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1487, DW_AT_name("Rd")
	.dwattr $C$DW$1487, DW_AT_TI_symbol_name("_Rd")
	.dwattr $C$DW$1487, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1488	.dwtag  DW_TAG_member
	.dwattr $C$DW$1488, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1488, DW_AT_name("Rq")
	.dwattr $C$DW$1488, DW_AT_TI_symbol_name("_Rq")
	.dwattr $C$DW$1488, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1489	.dwtag  DW_TAG_member
	.dwattr $C$DW$1489, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1489, DW_AT_name("Ld")
	.dwattr $C$DW$1489, DW_AT_TI_symbol_name("_Ld")
	.dwattr $C$DW$1489, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1490	.dwtag  DW_TAG_member
	.dwattr $C$DW$1490, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1490, DW_AT_name("Lq")
	.dwattr $C$DW$1490, DW_AT_TI_symbol_name("_Lq")
	.dwattr $C$DW$1490, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1491	.dwtag  DW_TAG_member
	.dwattr $C$DW$1491, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1491, DW_AT_name("Vbase")
	.dwattr $C$DW$1491, DW_AT_TI_symbol_name("_Vbase")
	.dwattr $C$DW$1491, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1492	.dwtag  DW_TAG_member
	.dwattr $C$DW$1492, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1492, DW_AT_name("Ibase")
	.dwattr $C$DW$1492, DW_AT_TI_symbol_name("_Ibase")
	.dwattr $C$DW$1492, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1493	.dwtag  DW_TAG_member
	.dwattr $C$DW$1493, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1493, DW_AT_name("FccD")
	.dwattr $C$DW$1493, DW_AT_TI_symbol_name("_FccD")
	.dwattr $C$DW$1493, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1494	.dwtag  DW_TAG_member
	.dwattr $C$DW$1494, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1494, DW_AT_name("FccQ")
	.dwattr $C$DW$1494, DW_AT_TI_symbol_name("_FccQ")
	.dwattr $C$DW$1494, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1495	.dwtag  DW_TAG_member
	.dwattr $C$DW$1495, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1495, DW_AT_name("wccD")
	.dwattr $C$DW$1495, DW_AT_TI_symbol_name("_wccD")
	.dwattr $C$DW$1495, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1496	.dwtag  DW_TAG_member
	.dwattr $C$DW$1496, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1496, DW_AT_name("wccQ")
	.dwattr $C$DW$1496, DW_AT_TI_symbol_name("_wccQ")
	.dwattr $C$DW$1496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1497	.dwtag  DW_TAG_member
	.dwattr $C$DW$1497, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1497, DW_AT_name("Vdcbus")
	.dwattr $C$DW$1497, DW_AT_TI_symbol_name("_Vdcbus")
	.dwattr $C$DW$1497, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1498	.dwtag  DW_TAG_member
	.dwattr $C$DW$1498, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1498, DW_AT_name("BemfK")
	.dwattr $C$DW$1498, DW_AT_TI_symbol_name("_BemfK")
	.dwattr $C$DW$1498, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1499	.dwtag  DW_TAG_member
	.dwattr $C$DW$1499, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1499, DW_AT_name("Wbase")
	.dwattr $C$DW$1499, DW_AT_TI_symbol_name("_Wbase")
	.dwattr $C$DW$1499, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1499, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$337

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("FastCurrentLoopPars_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$337)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)

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

$C$DW$1500	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1500, DW_AT_name("AL")
	.dwattr $C$DW$1500, DW_AT_location[DW_OP_reg0]

$C$DW$1501	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1501, DW_AT_name("AH")
	.dwattr $C$DW$1501, DW_AT_location[DW_OP_reg1]

$C$DW$1502	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1502, DW_AT_name("PL")
	.dwattr $C$DW$1502, DW_AT_location[DW_OP_reg2]

$C$DW$1503	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1503, DW_AT_name("PH")
	.dwattr $C$DW$1503, DW_AT_location[DW_OP_reg3]

$C$DW$1504	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1504, DW_AT_name("SP")
	.dwattr $C$DW$1504, DW_AT_location[DW_OP_reg20]

$C$DW$1505	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1505, DW_AT_name("XT")
	.dwattr $C$DW$1505, DW_AT_location[DW_OP_reg21]

$C$DW$1506	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1506, DW_AT_name("T")
	.dwattr $C$DW$1506, DW_AT_location[DW_OP_reg22]

$C$DW$1507	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1507, DW_AT_name("ST0")
	.dwattr $C$DW$1507, DW_AT_location[DW_OP_reg23]

$C$DW$1508	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1508, DW_AT_name("ST1")
	.dwattr $C$DW$1508, DW_AT_location[DW_OP_reg24]

$C$DW$1509	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1509, DW_AT_name("PC")
	.dwattr $C$DW$1509, DW_AT_location[DW_OP_reg25]

$C$DW$1510	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1510, DW_AT_name("RPC")
	.dwattr $C$DW$1510, DW_AT_location[DW_OP_reg26]

$C$DW$1511	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1511, DW_AT_name("FP")
	.dwattr $C$DW$1511, DW_AT_location[DW_OP_reg28]

$C$DW$1512	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1512, DW_AT_name("DP")
	.dwattr $C$DW$1512, DW_AT_location[DW_OP_reg29]

$C$DW$1513	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1513, DW_AT_name("SXM")
	.dwattr $C$DW$1513, DW_AT_location[DW_OP_reg30]

$C$DW$1514	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1514, DW_AT_name("PM")
	.dwattr $C$DW$1514, DW_AT_location[DW_OP_reg31]

$C$DW$1515	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1515, DW_AT_name("OVM")
	.dwattr $C$DW$1515, DW_AT_location[DW_OP_regx 0x20]

$C$DW$1516	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1516, DW_AT_name("PAGE0")
	.dwattr $C$DW$1516, DW_AT_location[DW_OP_regx 0x21]

$C$DW$1517	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1517, DW_AT_name("AMODE")
	.dwattr $C$DW$1517, DW_AT_location[DW_OP_regx 0x22]

$C$DW$1518	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1518, DW_AT_name("EALLOW")
	.dwattr $C$DW$1518, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$1519	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1519, DW_AT_name("INTM")
	.dwattr $C$DW$1519, DW_AT_location[DW_OP_regx 0x23]

$C$DW$1520	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1520, DW_AT_name("IFR")
	.dwattr $C$DW$1520, DW_AT_location[DW_OP_regx 0x24]

$C$DW$1521	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1521, DW_AT_name("IER")
	.dwattr $C$DW$1521, DW_AT_location[DW_OP_regx 0x25]

$C$DW$1522	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1522, DW_AT_name("V")
	.dwattr $C$DW$1522, DW_AT_location[DW_OP_regx 0x26]

$C$DW$1523	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1523, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$1523, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$1524	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1524, DW_AT_name("VOL")
	.dwattr $C$DW$1524, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$1525	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1525, DW_AT_name("AR0")
	.dwattr $C$DW$1525, DW_AT_location[DW_OP_reg4]

$C$DW$1526	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1526, DW_AT_name("XAR0")
	.dwattr $C$DW$1526, DW_AT_location[DW_OP_reg5]

$C$DW$1527	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1527, DW_AT_name("AR1")
	.dwattr $C$DW$1527, DW_AT_location[DW_OP_reg6]

$C$DW$1528	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1528, DW_AT_name("XAR1")
	.dwattr $C$DW$1528, DW_AT_location[DW_OP_reg7]

$C$DW$1529	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1529, DW_AT_name("AR2")
	.dwattr $C$DW$1529, DW_AT_location[DW_OP_reg8]

$C$DW$1530	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1530, DW_AT_name("XAR2")
	.dwattr $C$DW$1530, DW_AT_location[DW_OP_reg9]

$C$DW$1531	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1531, DW_AT_name("AR3")
	.dwattr $C$DW$1531, DW_AT_location[DW_OP_reg10]

$C$DW$1532	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1532, DW_AT_name("XAR3")
	.dwattr $C$DW$1532, DW_AT_location[DW_OP_reg11]

$C$DW$1533	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1533, DW_AT_name("AR4")
	.dwattr $C$DW$1533, DW_AT_location[DW_OP_reg12]

$C$DW$1534	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1534, DW_AT_name("XAR4")
	.dwattr $C$DW$1534, DW_AT_location[DW_OP_reg13]

$C$DW$1535	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1535, DW_AT_name("AR5")
	.dwattr $C$DW$1535, DW_AT_location[DW_OP_reg14]

$C$DW$1536	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1536, DW_AT_name("XAR5")
	.dwattr $C$DW$1536, DW_AT_location[DW_OP_reg15]

$C$DW$1537	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1537, DW_AT_name("AR6")
	.dwattr $C$DW$1537, DW_AT_location[DW_OP_reg16]

$C$DW$1538	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1538, DW_AT_name("XAR6")
	.dwattr $C$DW$1538, DW_AT_location[DW_OP_reg17]

$C$DW$1539	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1539, DW_AT_name("AR7")
	.dwattr $C$DW$1539, DW_AT_location[DW_OP_reg18]

$C$DW$1540	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1540, DW_AT_name("XAR7")
	.dwattr $C$DW$1540, DW_AT_location[DW_OP_reg19]

$C$DW$1541	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1541, DW_AT_name("R0H")
	.dwattr $C$DW$1541, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$1542	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1542, DW_AT_name("R1H")
	.dwattr $C$DW$1542, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$1543	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1543, DW_AT_name("R2H")
	.dwattr $C$DW$1543, DW_AT_location[DW_OP_regx 0x33]

$C$DW$1544	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1544, DW_AT_name("R3H")
	.dwattr $C$DW$1544, DW_AT_location[DW_OP_regx 0x37]

$C$DW$1545	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1545, DW_AT_name("R4H")
	.dwattr $C$DW$1545, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$1546	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1546, DW_AT_name("R5H")
	.dwattr $C$DW$1546, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$1547	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1547, DW_AT_name("R6H")
	.dwattr $C$DW$1547, DW_AT_location[DW_OP_regx 0x43]

$C$DW$1548	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1548, DW_AT_name("R7H")
	.dwattr $C$DW$1548, DW_AT_location[DW_OP_regx 0x47]

$C$DW$1549	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1549, DW_AT_name("RB")
	.dwattr $C$DW$1549, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$1550	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1550, DW_AT_name("STF")
	.dwattr $C$DW$1550, DW_AT_location[DW_OP_regx 0x28]

$C$DW$1551	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1551, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$1551, DW_AT_location[DW_OP_reg27]

$C$DW$1552	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1552, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$1552, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$1553	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1553, DW_AT_name("VCRC")
	.dwattr $C$DW$1553, DW_AT_location[DW_OP_regx 0x50]

$C$DW$1554	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1554, DW_AT_name("VSTATUS")
	.dwattr $C$DW$1554, DW_AT_location[DW_OP_regx 0x51]

	.dwendtag $C$DW$CU

