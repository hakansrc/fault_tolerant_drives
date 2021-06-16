################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
utility\ Src\ Files/DLOG_4CH_F.obj: ../utility\ Src\ Files/DLOG_4CH_F.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed --include_path="C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include" --include_path="C:/Repositories/fault_tolerant_drives/Software/MPC_WS/MonoMtrServo_377s/utility Src Files" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/include" --include_path="C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/include" --include_path="C:/ti/controlSUITE/libs/app_libs/motor_control/math_blocks/v4.3" --include_path="C:/ti/controlSUITE/libs/math/IQmath/v160/include" --advice:performance=all -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing --preproc_with_compile --preproc_dependency="utility Src Files/DLOG_4CH_F.d_raw" --obj_directory="utility Src Files" --tmu_support=tmu0 $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


