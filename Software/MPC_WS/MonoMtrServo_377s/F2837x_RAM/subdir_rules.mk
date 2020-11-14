################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_Adc.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_Adc.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_CodeStartBranch.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_DefaultISR.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_DefaultISR.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/source/F2837xS_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_Gpio.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_Gpio.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_PieCtrl.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_PieCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_PieVect.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_PieVect.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_SysCtrl.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_SysCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_sdfm_drivers.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_sdfm_drivers.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

F2837xS_usDelay.obj: C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_usDelay.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --include_path="C:/Users/admin/Documents/GitHub/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


