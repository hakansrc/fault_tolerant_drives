################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./F2837xD_Adc.obj" \
"./F2837xD_CodeStartBranch.obj" \
"./F2837xD_DefaultISR.obj" \
"./F2837xD_GlobalVariableDefs.obj" \
"./F2837xD_Gpio.obj" \
"./F2837xD_PieCtrl.obj" \
"./F2837xD_PieVect.obj" \
"./F2837xD_SysCtrl.obj" \
"./F2837xD_sdfm_drivers.obj" \
"./F2837xD_usDelay.obj" \
"./sources/DLOG_4CH_F.obj" \
"./sources/DRV830x_SPI.obj" \
"./sources/DmcProtection.obj" \
"./sources/FCL_SFRA_XL_DualServo.obj" \
"./sources/SciCommsGui_32bit.obj" \
"./sources/config.obj" \
"./sources/drv8301.obj" \
"./sources/drv8305.obj" \
"./sources/pwmdac.obj" \
"./sources/sfra_gui.obj" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_headers/cmd/F2837xD_Headers_nonBIOS_cpu1.cmd" \
"../SFRA_FTMU_Lib.lib" \
"C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib/fast_current_loop_c28x.lib" \
"../cmd/2837xS_Generic_RAM_lnk.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \
-lfast_current_loop_c28x.lib \
-lc28x_vcu0_library_fpu32.lib \
-lrts2800_fpu32.lib \
-lIQmath_fpu32.lib \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include cmd/subdir_vars.mk
-include sources/subdir_vars.mk
-include subdir_rules.mk
-include cmd/subdir_rules.mk
-include sources/subdir_rules.mk
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
FCL_379XL.out \

EXE_OUTPUTS__QUOTED += \
"FCL_379XL.out" \

BIN_OUTPUTS += \
FCL_379XL.hex \

BIN_OUTPUTS__QUOTED += \
"FCL_379XL.hex" \


# All Target
all: FCL_379XL.out

# Tool invocations
FCL_379XL.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O4 --opt_for_speed=5 --fp_mode=relaxed --define="_DEBUG" --define="CPU1" --define="_LAUNCHXL_F28379D" --define="LARGE_MODEL" -g --diag_warning=225 --quiet -k --asm_listing -z -m"FCL_379XL.map" --stack_size=0x380 --warn_sections -i"C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/lib" -i"C:/ti/controlSUITE/libs/app_libs/motor_control/libs/FCL_SFRA/v01_00_00_00/lib" -i"C:/ti/controlSUITE/libs/dsp/VCU/v2_10_00_00/lib" -i"C:/ti/controlsuite/libs/math/IQmath/v160/lib" -i"C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include" -i"C:/Repositories/fault_tolerant_drives/Software/MPC_WS/FCL_379XL" --reread_libs --xml_link_info="HVPM_Sensorless_linkInfo.xml" --rom_model -o "FCL_379XL.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

FCL_379XL.hex: $(EXE_OUTPUTS)
	@echo 'Building secondary target: "$@"'
	@echo 'Invoking: C2000 Hex Utility'
	"C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/bin/hex2000" --diag_wrap=off -o "FCL_379XL.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building secondary target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(BIN_OUTPUTS__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "F2837xD_Adc.lst" "F2837xD_CodeStartBranch.lst" "F2837xD_DefaultISR.lst" "F2837xD_GlobalVariableDefs.lst" "F2837xD_Gpio.lst" "F2837xD_PieCtrl.lst" "F2837xD_PieVect.lst" "F2837xD_SysCtrl.lst" "F2837xD_sdfm_drivers.lst" "F2837xD_usDelay.lst" "sources/DLOG_4CH_F.lst" "sources/DRV830x_SPI.lst" "sources/DmcProtection.lst" "sources/FCL_SFRA_XL_DualServo.lst" "sources/SciCommsGui_32bit.lst" "sources/config.lst" "sources/drv8301.lst" "sources/drv8305.lst" "sources/pwmdac.lst" "sources/sfra_gui.lst" 
	-$(RM) "F2837xD_Adc.obj" "F2837xD_CodeStartBranch.obj" "F2837xD_DefaultISR.obj" "F2837xD_GlobalVariableDefs.obj" "F2837xD_Gpio.obj" "F2837xD_PieCtrl.obj" "F2837xD_PieVect.obj" "F2837xD_SysCtrl.obj" "F2837xD_sdfm_drivers.obj" "F2837xD_usDelay.obj" "sources\DLOG_4CH_F.obj" "sources\DRV830x_SPI.obj" "sources\DmcProtection.obj" "sources\FCL_SFRA_XL_DualServo.obj" "sources\SciCommsGui_32bit.obj" "sources\config.obj" "sources\drv8301.obj" "sources\drv8305.obj" "sources\pwmdac.obj" "sources\sfra_gui.obj" 
	-$(RM) "F2837xD_Adc.d" "F2837xD_DefaultISR.d" "F2837xD_GlobalVariableDefs.d" "F2837xD_Gpio.d" "F2837xD_PieCtrl.d" "F2837xD_PieVect.d" "F2837xD_SysCtrl.d" "F2837xD_sdfm_drivers.d" "sources\DLOG_4CH_F.d" "sources\DRV830x_SPI.d" "sources\DmcProtection.d" "sources\FCL_SFRA_XL_DualServo.d" "sources\SciCommsGui_32bit.d" "sources\config.d" "sources\drv8301.d" "sources\drv8305.d" "sources\pwmdac.d" "sources\sfra_gui.d" 
	-$(RM) "F2837xD_Adc.asm" "F2837xD_CodeStartBranch.asm" "F2837xD_DefaultISR.asm" "F2837xD_GlobalVariableDefs.asm" "F2837xD_Gpio.asm" "F2837xD_PieCtrl.asm" "F2837xD_PieVect.asm" "F2837xD_SysCtrl.asm" "F2837xD_sdfm_drivers.asm" "F2837xD_usDelay.asm" "sources/DLOG_4CH_F.asm" "sources/DRV830x_SPI.asm" "sources/DmcProtection.asm" "sources/FCL_SFRA_XL_DualServo.asm" "sources/SciCommsGui_32bit.asm" "sources/config.asm" "sources/drv8301.asm" "sources/drv8305.asm" "sources/pwmdac.asm" "sources/sfra_gui.asm" 
	-$(RM) "F2837xD_CodeStartBranch.d" "F2837xD_usDelay.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

