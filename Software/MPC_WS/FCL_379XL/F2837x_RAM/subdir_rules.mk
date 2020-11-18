################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
F2837xD_Adc.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_Adc.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_DefaultISR.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_DefaultISR.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_headers/source/F2837xD_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_Gpio.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_Gpio.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_PieCtrl.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_PieCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_PieVect.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_PieVect.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_SysCtrl.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_SysCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_sdfm_drivers.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_sdfm_drivers.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_usDelay.obj: C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_usDelay.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/lib_headers" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/FCL_379XL/app_headers" --include_path="C:/ti/controlSUITE/libs/app_libs/SFRA/v1_10_00_00/Float/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_headers/include" --include_path="C:/ti/ControlSuite/device_support/F2837xD/v210/F2837xD_common/include" --include_path="C:/ti/controlsuite/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlsuite/libs/math/IQmath/v160/include" --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


