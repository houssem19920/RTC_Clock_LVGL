/*
 * led_effect.c
 *
 *  Created on: Dec 9, 2022
 *      Author: dot
 */

#include "main.h"


void led_effect_stop(void)
{

	for(int i = 0 ; i < 4 ; i++)
	xTimerStop(handle_led_timer[i],portMAX_DELAY);// stop all timers

}

void led_effect(uint8_t n)//it will start the right software timer
{
led_effect_stop();// stop led effects
xTimerStart(handle_led_timer[n-1],portMAX_DELAY);// start the timer
}

void turn_off_all_leds(void)
{
	HAL_GPIO_WritePin(GPIOE, LED1,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, LED2,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, LED3,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, LED4,GPIO_PIN_RESET);
}


void turn_on_all_leds(void)
{
	HAL_GPIO_WritePin(GPIOE, LED1,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOE, LED2,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOE, LED3,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOE, LED4,GPIO_PIN_SET);
}

void turn_on_odd_leds(void)
{
	HAL_GPIO_WritePin(GPIOE, LED1,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOE, LED2,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, LED3,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOE, LED4,GPIO_PIN_RESET);
}


void turn_on_even_leds(void)
{
	HAL_GPIO_WritePin(GPIOE, LED1,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, LED2,GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOE, LED3,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, LED4,GPIO_PIN_SET);
}



void LED_effect1(void)
{
	static int flag = 1;// static variable initialised only once
	(flag ^= 1) ? turn_off_all_leds() : turn_on_all_leds();
}


void LED_effect2(void)
{
	static int flag = 1;
	(flag ^= 1) ? turn_on_even_leds() : turn_on_odd_leds();
}

void LED_control( int value )
{
  for(int i = 0 ; i < 4 ; i++)
	  HAL_GPIO_WritePin(GPIOE, (LED1 << i), ((value >> i)& 0x1));
}

void LED_effect3(void)
{
	static int i = 0;
	LED_control( 0x1 << (i++ % 4) );
}


void LED_effect4(void)
{
	static int i = 0;
	LED_control( 0x08 >> (i++ % 4) );
}
