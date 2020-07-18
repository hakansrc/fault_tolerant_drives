################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs930/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./F2837xD_Adc.obj" \
"./F2837xD_CodeStartBranch.obj" \
"./F2837xD_DefaultISR.obj" \
"./F2837xD_EPwm.obj" \
"./F2837xD_GlobalVariableDefs.obj" \
"./F2837xD_Gpio.obj" \
"./F2837xD_PieCtrl.obj" \
"./F2837xD_PieVect.obj" \
"./F2837xD_SysCtrl.obj" \
"./F2837xD_sdfm_drivers.obj" \
"./F2837xD_usDelay.obj" \
"./IDDK_PM_Servo_F2837x.obj" \
"./bissc.obj" \
"./endat.obj" \
"./resolver.obj" \
"./utility Src Files/DLOG_4CH_F.obj" \
"../F2837xD_Headers_clb_cpu1.cmd" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/cmd/F2837xD_Headers_nonBIOS_cpu1.cmd" \
"../IDDK_Servo_2837x_RAM_lnk_cpu1.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \
-lc28x_vcu0_library_fpu32.lib \
-lPM_bissC_Lib.lib \
-lPM_endat22_lib.lib \
-lrts2800_fpu32.lib \
-lIQmath_fpu32.lib \
-lResolver_Lib_Float_TMU0.lib \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include utility\ Src\ Files/subdir_vars.mk
-include subdir_rules.mk
-include utility\ Src\ Files/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
IDDK_PM_Servo_F2837x-v2.out \

EXE_OUTPUTS__QUOTED += \
"IDDK_PM_Servo_F2837x-v2.out" \

BIN_OUTPUTS += \
IDDK_PM_Servo_F2837x-v2.hex \

BIN_OUTPUTS__QUOTED += \
"IDDK_PM_Servo_F2837x-v2.hex" \


# All Target
all: IDDK_PM_Servo_F2837x-v2.out

# Tool invocations
IDDK_PM_Servo_F2837x-v2.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/bin/cl2000" -v28 -ml -mt --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --cla_support=cla0 -O1 --opt_for_speed=5 --fp_mode=relaxed -g --define="_DEBUG" --define="CPU1" --define="LARGE_MODEL" --quiet --diag_warning=225 -k --asm_listing -z -m"IDDK_PM_Servo_F2837x-v2.map" --stack_size=0x380 --warn_sections -i"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/lib" -i"C:/ti/controlSUITE/libs/dsp/VCU/v2_10_00_00/lib" -i"C:/ti/controlSUITE/libs/math/IQmath/v160/lib" -i"C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/bissc/Float/lib" -i"C:/ti/controlSUITE/libs/app_libs/position_manager/v01_00_00_00/endat22/Float/lib" -i"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/include" -i"C:/ti/controlSUITE/libs/app_libs/motor_control/libs/resolver/v101/lib" --reread_libs --xml_link_info="IDDK_PM_Servo_F2837x-v2.xml" --rom_model -o "IDDK_PM_Servo_F2837x-v2.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

IDDK_PM_Servo_F2837x-v2.hex: $(EXE_OUTPUTS)
	@echo 'Building files: $(strip $(EXE_OUTPUTS__QUOTED))'
	@echo 'Invoking: C2000 Hex Utility'
	"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/bin/hex2000"  -o "IDDK_PM_Servo_F2837x-v2.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $(strip $(EXE_OUTPUTS__QUOTED))'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(BIN_OUTPUTS__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "F2837xD_Adc.lst" "F2837xD_CodeStartBranch.lst" "F2837xD_DefaultISR.lst" "F2837xD_EPwm.lst" "F2837xD_GlobalVariableDefs.lst" "F2837xD_Gpio.lst" "F2837xD_PieCtrl.lst" "F2837xD_PieVect.lst" "F2837xD_SysCtrl.lst" "F2837xD_sdfm_drivers.lst" "F2837xD_usDelay.lst" "IDDK_PM_Servo_F2837x.lst" "bissc.lst" "endat.lst" "resolver.lst" "utility Src Files/DLOG_4CH_F.lst" 
	-$(RM) "F2837xD_Adc.obj" "F2837xD_CodeStartBranch.obj" "F2837xD_DefaultISR.obj" "F2837xD_EPwm.obj" "F2837xD_GlobalVariableDefs.obj" "F2837xD_Gpio.obj" "F2837xD_PieCtrl.obj" "F2837xD_PieVect.obj" "F2837xD_SysCtrl.obj" "F2837xD_sdfm_drivers.obj" "F2837xD_usDelay.obj" "IDDK_PM_Servo_F2837x.obj" "bissc.obj" "endat.obj" "resolver.obj" "utility Src Files\DLOG_4CH_F.obj" 
	-$(RM) "F2837xD_Adc.d" "F2837xD_DefaultISR.d" "F2837xD_EPwm.d" "F2837xD_GlobalVariableDefs.d" "F2837xD_Gpio.d" "F2837xD_PieCtrl.d" "F2837xD_PieVect.d" "F2837xD_SysCtrl.d" "F2837xD_sdfm_drivers.d" "IDDK_PM_Servo_F2837x.d" "bissc.d" "endat.d" "resolver.d" "utility Src Files\DLOG_4CH_F.d" 
	-$(RM) "F2837xD_Adc.asm" "F2837xD_CodeStartBranch.asm" "F2837xD_DefaultISR.asm" "F2837xD_EPwm.asm" "F2837xD_GlobalVariableDefs.asm" "F2837xD_Gpio.asm" "F2837xD_PieCtrl.asm" "F2837xD_PieVect.asm" "F2837xD_SysCtrl.asm" "F2837xD_sdfm_drivers.asm" "F2837xD_usDelay.asm" "IDDK_PM_Servo_F2837x.asm" "bissc.asm" "endat.asm" "resolver.asm" "utility Src Files/DLOG_4CH_F.asm" 
	-$(RM) "F2837xD_CodeStartBranch.d" "F2837xD_usDelay.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

