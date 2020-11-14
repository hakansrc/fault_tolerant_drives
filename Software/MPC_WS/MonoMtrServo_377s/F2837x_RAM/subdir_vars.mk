################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../2837xS_Generic_RAM_lnk.cmd \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/cmd/F2837xS_Headers_nonBIOS.cmd 

ASM_SRCS += \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_CodeStartBranch.asm \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_usDelay.asm 

C_SRCS += \
../DRV830x_SPI.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_Adc.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_DefaultISR.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/source/F2837xS_GlobalVariableDefs.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_Gpio.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_PieCtrl.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_PieVect.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_SysCtrl.c \
C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_sdfm_drivers.c \
../MonoMtrServo.c \
../config.c \
../drv8301.c \
../drv8305.c 

C_DEPS += \
./DRV830x_SPI.d \
./F2837xS_Adc.d \
./F2837xS_DefaultISR.d \
./F2837xS_GlobalVariableDefs.d \
./F2837xS_Gpio.d \
./F2837xS_PieCtrl.d \
./F2837xS_PieVect.d \
./F2837xS_SysCtrl.d \
./F2837xS_sdfm_drivers.d \
./MonoMtrServo.d \
./config.d \
./drv8301.d \
./drv8305.d 

OBJS += \
./DRV830x_SPI.obj \
./F2837xS_Adc.obj \
./F2837xS_CodeStartBranch.obj \
./F2837xS_DefaultISR.obj \
./F2837xS_GlobalVariableDefs.obj \
./F2837xS_Gpio.obj \
./F2837xS_PieCtrl.obj \
./F2837xS_PieVect.obj \
./F2837xS_SysCtrl.obj \
./F2837xS_sdfm_drivers.obj \
./F2837xS_usDelay.obj \
./MonoMtrServo.obj \
./config.obj \
./drv8301.obj \
./drv8305.obj 

ASM_DEPS += \
./F2837xS_CodeStartBranch.d \
./F2837xS_usDelay.d 

OBJS__QUOTED += \
"DRV830x_SPI.obj" \
"F2837xS_Adc.obj" \
"F2837xS_CodeStartBranch.obj" \
"F2837xS_DefaultISR.obj" \
"F2837xS_GlobalVariableDefs.obj" \
"F2837xS_Gpio.obj" \
"F2837xS_PieCtrl.obj" \
"F2837xS_PieVect.obj" \
"F2837xS_SysCtrl.obj" \
"F2837xS_sdfm_drivers.obj" \
"F2837xS_usDelay.obj" \
"MonoMtrServo.obj" \
"config.obj" \
"drv8301.obj" \
"drv8305.obj" 

C_DEPS__QUOTED += \
"DRV830x_SPI.d" \
"F2837xS_Adc.d" \
"F2837xS_DefaultISR.d" \
"F2837xS_GlobalVariableDefs.d" \
"F2837xS_Gpio.d" \
"F2837xS_PieCtrl.d" \
"F2837xS_PieVect.d" \
"F2837xS_SysCtrl.d" \
"F2837xS_sdfm_drivers.d" \
"MonoMtrServo.d" \
"config.d" \
"drv8301.d" \
"drv8305.d" 

ASM_DEPS__QUOTED += \
"F2837xS_CodeStartBranch.d" \
"F2837xS_usDelay.d" 

C_SRCS__QUOTED += \
"../DRV830x_SPI.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_Adc.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_DefaultISR.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_headers/source/F2837xS_GlobalVariableDefs.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_Gpio.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_PieCtrl.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_PieVect.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_SysCtrl.c" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_sdfm_drivers.c" \
"../MonoMtrServo.c" \
"../config.c" \
"../drv8301.c" \
"../drv8305.c" 

ASM_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_CodeStartBranch.asm" \
"C:/ti/controlSUITE/device_support/F2837xS/v170/F2837xS_common/source/F2837xS_usDelay.asm" 


