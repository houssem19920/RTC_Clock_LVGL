#include "../../lv_examples.h"
#if LV_USE_GIF && LV_BUILD_EXAMPLES

/**
 * Open a GIF image from a file and a variable
 */
void lv_example_gif_1(void)
{
	   /* LV_IMG_DECLARE(eid_2);
	    lv_obj_t * img;

	    img = lv_gif_create(lv_scr_act());
	    lv_gif_set_src(img, &eid_2);
	    lv_obj_align(img, LV_ALIGN_CENTER, 0 , 0)*/

	    lv_obj_t * img;


	    img = lv_gif_create(lv_scr_act());
	    //Assuming a File system is attached to letter 'A'
	     //E.g. set LV_USE_FS_STDIO 'A' in lv_conf.h
	    lv_gif_set_src(img, "C:Users/slama/Desktop/stm32_fastbit/LVGL/Workspace/003_RGB_MIXER/lvgl/examples/libs/gif/bulb.gif");
	    lv_obj_align(img, LV_ALIGN_RIGHT_MID, -20, 0);


}

#endif
