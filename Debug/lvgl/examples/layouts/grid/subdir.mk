################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/layouts/grid/lv_example_grid_1.c \
../lvgl/examples/layouts/grid/lv_example_grid_2.c \
../lvgl/examples/layouts/grid/lv_example_grid_3.c \
../lvgl/examples/layouts/grid/lv_example_grid_4.c \
../lvgl/examples/layouts/grid/lv_example_grid_5.c \
../lvgl/examples/layouts/grid/lv_example_grid_6.c 

OBJS += \
./lvgl/examples/layouts/grid/lv_example_grid_1.o \
./lvgl/examples/layouts/grid/lv_example_grid_2.o \
./lvgl/examples/layouts/grid/lv_example_grid_3.o \
./lvgl/examples/layouts/grid/lv_example_grid_4.o \
./lvgl/examples/layouts/grid/lv_example_grid_5.o \
./lvgl/examples/layouts/grid/lv_example_grid_6.o 

C_DEPS += \
./lvgl/examples/layouts/grid/lv_example_grid_1.d \
./lvgl/examples/layouts/grid/lv_example_grid_2.d \
./lvgl/examples/layouts/grid/lv_example_grid_3.d \
./lvgl/examples/layouts/grid/lv_example_grid_4.d \
./lvgl/examples/layouts/grid/lv_example_grid_5.d \
./lvgl/examples/layouts/grid/lv_example_grid_6.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/layouts/grid/%.o lvgl/examples/layouts/grid/%.su lvgl/examples/layouts/grid/%.cyclo: ../lvgl/examples/layouts/grid/%.c lvgl/examples/layouts/grid/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_WorKspace1/RTOS_LVGL_CLOCK" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/SEGGER" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/OS" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/SEGGER/Config" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS/include" -I"C:/Users/slama/Desktop/stm32_fastbit/RTOS/projects/RTOS_Workspace/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-layouts-2f-grid

clean-lvgl-2f-examples-2f-layouts-2f-grid:
	-$(RM) ./lvgl/examples/layouts/grid/lv_example_grid_1.cyclo ./lvgl/examples/layouts/grid/lv_example_grid_1.d ./lvgl/examples/layouts/grid/lv_example_grid_1.o ./lvgl/examples/layouts/grid/lv_example_grid_1.su ./lvgl/examples/layouts/grid/lv_example_grid_2.cyclo ./lvgl/examples/layouts/grid/lv_example_grid_2.d ./lvgl/examples/layouts/grid/lv_example_grid_2.o ./lvgl/examples/layouts/grid/lv_example_grid_2.su ./lvgl/examples/layouts/grid/lv_example_grid_3.cyclo ./lvgl/examples/layouts/grid/lv_example_grid_3.d ./lvgl/examples/layouts/grid/lv_example_grid_3.o ./lvgl/examples/layouts/grid/lv_example_grid_3.su ./lvgl/examples/layouts/grid/lv_example_grid_4.cyclo ./lvgl/examples/layouts/grid/lv_example_grid_4.d ./lvgl/examples/layouts/grid/lv_example_grid_4.o ./lvgl/examples/layouts/grid/lv_example_grid_4.su ./lvgl/examples/layouts/grid/lv_example_grid_5.cyclo ./lvgl/examples/layouts/grid/lv_example_grid_5.d ./lvgl/examples/layouts/grid/lv_example_grid_5.o ./lvgl/examples/layouts/grid/lv_example_grid_5.su ./lvgl/examples/layouts/grid/lv_example_grid_6.cyclo ./lvgl/examples/layouts/grid/lv_example_grid_6.d ./lvgl/examples/layouts/grid/lv_example_grid_6.o ./lvgl/examples/layouts/grid/lv_example_grid_6.su

.PHONY: clean-lvgl-2f-examples-2f-layouts-2f-grid

