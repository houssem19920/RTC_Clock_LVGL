################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/libs/ffmpeg/lv_ffmpeg.c 

OBJS += \
./lvgl/src/libs/ffmpeg/lv_ffmpeg.o 

C_DEPS += \
./lvgl/src/libs/ffmpeg/lv_ffmpeg.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/libs/ffmpeg/%.o lvgl/src/libs/ffmpeg/%.su lvgl/src/libs/ffmpeg/%.cyclo: ../lvgl/src/libs/ffmpeg/%.c lvgl/src/libs/ffmpeg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_WorKspace1/RTOS_LVGL_CLOCK" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/SEGGER" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/OS" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/Config" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS/include" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-libs-2f-ffmpeg

clean-lvgl-2f-src-2f-libs-2f-ffmpeg:
	-$(RM) ./lvgl/src/libs/ffmpeg/lv_ffmpeg.cyclo ./lvgl/src/libs/ffmpeg/lv_ffmpeg.d ./lvgl/src/libs/ffmpeg/lv_ffmpeg.o ./lvgl/src/libs/ffmpeg/lv_ffmpeg.su

.PHONY: clean-lvgl-2f-src-2f-libs-2f-ffmpeg

