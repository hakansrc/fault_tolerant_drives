################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
F2837xD_Adc.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_Adc.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_DefaultISR.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_DefaultISR.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_EPwm.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_EPwm.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/source/F2837xD_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_Gpio.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_Gpio.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_PieCtrl.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_PieCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_PieVect.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_PieVect.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_SysCtrl.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_SysCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_sdfm_drivers.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_sdfm_drivers.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xD_usDelay.obj: C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_usDelay.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/hakan/workspace_v10/IDDK_PM_Servo_F2837x-v2/utility Src Files" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/include" --include_path="C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/include" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


