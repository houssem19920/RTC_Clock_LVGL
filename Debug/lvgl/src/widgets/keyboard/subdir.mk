################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/widgets/keyboard/lv_keyboard.c 

OBJS += \
./lvgl/src/widgets/keyboard/lv_keyboard.o 

C_DEPS += \
./lvgl/src/widgets/keyboard/lv_keyboard.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/widgets/keyboard/%.o lvgl/src/widgets/keyboard/%.su lvgl/src/widgets/keyboard/%.cyclo: ../lvgl/src/widgets/keyboard/%.c lvgl/src/widgets/keyboard/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_WorKspace1/RTOS_LVGL_CLOCK" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/SEGGER" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/OS" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/Config" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS/include" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-widgets-2f-keyboard

clean-lvgl-2f-src-2f-widgets-2f-keyboard:
	-$(RM) ./lvgl/src/widgets/keyboard/lv_keyboard.cyclo ./lvgl/src/widgets/keyboard/lv_keyboard.d ./lvgl/src/widgets/keyboard/lv_keyboard.o ./lvgl/src/widgets/keyboard/lv_keyboard.su

.PHONY: clean-lvgl-2f-src-2f-widgets-2f-keyboard
