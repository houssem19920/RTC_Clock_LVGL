#include "../../lv_examples.h"
#if LV_USE_LABEL && LV_BUILD_EXAMPLES

/**
 * Show line wrap, re-color, line align and text scrolling.
 */
void lv_example_label_1(void)
{
	 /* lv_obj_t * label1 = lv_label_create(lv_scr_act());
	     lv_label_set_long_mode(label1, LV_LABEL_LONG_WRAP);     //Break the long lines
	     lv_label_set_recolor(label1, true);                      //Enable re-coloring by commands in the text
	     lv_label_set_text(label1, "#0000ff Re-color# #ff00ff words# #ff0000 of a# label, align the lines to the center "
	                       "and wrap long text automatically.");
	     lv_obj_set_width(label1, 150);  //Set smaller width to make the lines wrap
	     lv_obj_set_style_text_align(label1, LV_TEXT_ALIGN_CENTER, 0);
	     lv_obj_align(label1, LV_ALIGN_CENTER, 0, -40);*/

	    lv_obj_t* label2 = lv_label_create(lv_scr_act());
	    lv_label_set_recolor(label2, true);
	    lv_obj_set_style_text_font(label2, &lv_font_montserrat_34, LV_PART_MAIN);
	    lv_label_set_long_mode(label2, LV_LABEL_LONG_SCROLL_CIRCULAR);     /*Circular scroll*/
	    lv_obj_set_width(label2, 250);
	    lv_label_set_text(label2, "#0000ff 4eme Sc. Tech 1 ");
	    lv_obj_align(label2, LV_ALIGN_CENTER, 0, -50);

	    lv_obj_t* label4 = lv_label_create(lv_scr_act());
	    lv_label_set_recolor(label4, true);
	    lv_obj_set_style_text_font(label4, &lv_font_montserrat_34, LV_PART_MAIN);
	    lv_label_set_long_mode(label4, LV_LABEL_LONG_SCROLL);     /*Circular scroll*/
	    lv_obj_set_width(label4, 120);
	    lv_label_set_text(label4, "#E15A5C Bon Vent ");
	    lv_obj_align(label4, LV_ALIGN_CENTER, 0, 0);

	    lv_obj_t* label1 = lv_label_create(lv_scr_act());
	    lv_label_set_recolor(label1, true);
	    lv_obj_set_style_text_font(label1, &lv_font_montserrat_16, LV_PART_MAIN);
	    lv_label_set_text(label1, "Prof :#8E5AE1 Houssem Ben Slama ");
	    lv_obj_align(label1, LV_ALIGN_BOTTOM_LEFT, 0, -50);

	    lv_obj_t* label3 = lv_label_create(lv_scr_act());
	    lv_label_set_recolor(label3, true);
	    lv_obj_set_style_text_font(label3, &lv_font_montserrat_16, LV_PART_MAIN);
	    lv_label_set_text(label3, "2022/2023");
	    lv_obj_align(label3, LV_ALIGN_BOTTOM_RIGHT, 0, -50);

	    lv_obj_t* label5 = lv_label_create(lv_scr_act());
	    lv_label_set_recolor(label5, true);
	    lv_obj_set_style_text_font(label5, &lv_font_montserrat_16, LV_PART_MAIN);
	    lv_label_set_text(label5, "Labo Genie Electrique #168560 Menzel Temim");
	    lv_obj_align(label5, LV_ALIGN_TOP_LEFT, 0,10);


}

#endif
