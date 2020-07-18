################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../F2837xD_Headers_clb_cpu1.cmd \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/cmd/F2837xD_Headers_nonBIOS_cpu1.cmd \
../IDDK_Servo_2837x_RAM_lnk_cpu1.cmd 

ASM_SRCS += \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_CodeStartBranch.asm \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_usDelay.asm 

C_SRCS += \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_Adc.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_DefaultISR.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_EPwm.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/source/F2837xD_GlobalVariableDefs.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_Gpio.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_PieCtrl.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_PieVect.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_SysCtrl.c \
C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_sdfm_drivers.c \
../IDDK_PM_Servo_F2837x.c \
../bissc.c \
../endat.c \
../resolver.c 

C_DEPS += \
./F2837xD_Adc.d \
./F2837xD_DefaultISR.d \
./F2837xD_EPwm.d \
./F2837xD_GlobalVariableDefs.d \
./F2837xD_Gpio.d \
./F2837xD_PieCtrl.d \
./F2837xD_PieVect.d \
./F2837xD_SysCtrl.d \
./F2837xD_sdfm_drivers.d \
./IDDK_PM_Servo_F2837x.d \
./bissc.d \
./endat.d \
./resolver.d 

OBJS += \
./F2837xD_Adc.obj \
./F2837xD_CodeStartBranch.obj \
./F2837xD_DefaultISR.obj \
./F2837xD_EPwm.obj \
./F2837xD_GlobalVariableDefs.obj \
./F2837xD_Gpio.obj \
./F2837xD_PieCtrl.obj \
./F2837xD_PieVect.obj \
./F2837xD_SysCtrl.obj \
./F2837xD_sdfm_drivers.obj \
./F2837xD_usDelay.obj \
./IDDK_PM_Servo_F2837x.obj \
./bissc.obj \
./endat.obj \
./resolver.obj 

ASM_DEPS += \
./F2837xD_CodeStartBranch.d \
./F2837xD_usDelay.d 

OBJS__QUOTED += \
"F2837xD_Adc.obj" \
"F2837xD_CodeStartBranch.obj" \
"F2837xD_DefaultISR.obj" \
"F2837xD_EPwm.obj" \
"F2837xD_GlobalVariableDefs.obj" \
"F2837xD_Gpio.obj" \
"F2837xD_PieCtrl.obj" \
"F2837xD_PieVect.obj" \
"F2837xD_SysCtrl.obj" \
"F2837xD_sdfm_drivers.obj" \
"F2837xD_usDelay.obj" \
"IDDK_PM_Servo_F2837x.obj" \
"bissc.obj" \
"endat.obj" \
"resolver.obj" 

C_DEPS__QUOTED += \
"F2837xD_Adc.d" \
"F2837xD_DefaultISR.d" \
"F2837xD_EPwm.d" \
"F2837xD_GlobalVariableDefs.d" \
"F2837xD_Gpio.d" \
"F2837xD_PieCtrl.d" \
"F2837xD_PieVect.d" \
"F2837xD_SysCtrl.d" \
"F2837xD_sdfm_drivers.d" \
"IDDK_PM_Servo_F2837x.d" \
"bissc.d" \
"endat.d" \
"resolver.d" 

ASM_DEPS__QUOTED += \
"F2837xD_CodeStartBranch.d" \
"F2837xD_usDelay.d" 

C_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_Adc.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_DefaultISR.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_EPwm.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_headers/source/F2837xD_GlobalVariableDefs.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_Gpio.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_PieCtrl.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_PieVect.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_SysCtrl.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_sdfm_drivers.c" \
"../IDDK_PM_Servo_F2837x.c" \
"../bissc.c" \
"../endat.c" \
"../resolver.c" 

ASM_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_CodeStartBranch.asm" \
"C:/ti/controlSUITE/device_support/F2837xD/v170/F2837xD_common/source/F2837xD_usDelay.asm" 


