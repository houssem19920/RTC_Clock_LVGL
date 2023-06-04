
#include "clock.h"
#include "ClockAlarmUI.h"
#include "main.h"



bool Clock_is_alarm(Clock* const me) {
    return (me->time_now == me->alarm_time);
}



void Clock_set_current_time(Clock * const me, uint32_t new_time,uint8_t format) {
	RTC_TimeTypeDef rtc_time;
    me->time_now = new_time;//fix_this
    rtc_time.Hours=GET_HOUR((me->time_now));
    rtc_time.Minutes=GET_MIN((me->time_now));
    rtc_time.Seconds=GET_SEC((me->time_now));
    rtc_time.SecondFraction=00;
    rtc_time.TimeFormat=format;

    if(HAL_RTC_SetTime(&hrtc,&rtc_time, RTC_FORMAT_BIN) != HAL_OK )
    {
    Error_Handler();

    }

}

void Clock_set_alarm_time(Clock* const me, uint32_t new_time) {
	   me->alarm_time = new_time;
}

void Clock_set_date(Clock * const me, date_t *const  new_date) {
    me->date_now.day = new_date->day;
    me->date_now.date = new_date->date;
    me->date_now.month = new_date->month;
    me->date_now.year = new_date->year;
}

void Clock_get_date(Clock * const me, date_t *const pdate) {
    pdate->day = me->date_now.day;
    pdate->date = me->date_now.date;
    pdate->month = me->date_now.month;
    pdate->year = me->date_now.year;
}



void Clock_ctor(Clock *const me) {


//	Clock_set_current_time(&me->time_now,INITIAL_CURR_TIME,RTC_HOURFORMAT12_AM);
    me->alarm_time = INITIAL_ALARM_TIME;
    me->date_now.day = INITIAL_DAY;
    me->date_now.date = INITIAL_DATE;
    me->date_now.month = INITIAL_MONTH;
    me->date_now.year = INITIAL_YEAR;
    me->alarm_status = INITIAL_ALARM_STATUS;

}
void temp_RH_ctor(temp_RH *const me)
{


}



