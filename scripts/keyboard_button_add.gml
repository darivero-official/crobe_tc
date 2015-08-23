///keyboard_button_add(x,y,w,h,char,cola,colb,add to key string?)
/*
    This script is imported from another source. Credit to Manuel 777 invadergames.net
*/
var ret;
ret = -1;

if mouse_device_rectangle(argument0,argument1,argument0+argument2,argument1+argument3,0) {
    if device_mouse_check_button(0,mb_left) {
        ret = 0;
    }
    if device_mouse_check_button_pressed(0,mb_left) {
        ret = 1;
        if (argument7 == true) {
            keyboard_string += argument4;
            if global.snd_fx = true {
                ex_audio_play("sndTick_tiny",0); //Play audio sndTick_tiny
            }
            if global.imm_haptics = true { //Check if immersion haptics is enabled
                immersion_play_effect(2); //Immersion play SHARP CLICK 33
            }
        }
    }
    if device_mouse_check_button_released(0,mb_left) {
        ret = 2;
    }
}

draw_set_alpha(1*ease_fase)
//draw_rectangle_colour(argument0-1,argument1-1,argument0+argument2+1,argument1+argument3+1,make_colour_rgb(0,190,0),make_colour_rgb(0,190,0),make_colour_rgb(0,190,0),make_colour_rgb(0,190,0),0);
draw_rectangle_colour(argument0,argument1,argument0+argument2,argument1+argument3,argument5,argument5,argument6,argument6,0);
if ret != -1 {
    draw_rectangle_colour(argument0,argument1,argument0+argument2,argument1+argument3,highlight_a,highlight_a,highlight_b,highlight_b,0);
}

draw_set_alpha(0.5*ease_fase)
draw_line_width_colour(argument0,argument1,argument0+argument2,argument1,1,make_colour_rgb(10,10,10),make_colour_rgb(0,190,0));
draw_line_width_colour(argument0,argument1+argument3,argument0+argument2,argument1+argument3,1,make_colour_rgb(0,190,0),make_colour_rgb(10,10,10));
draw_set_alpha(1*ease_fase)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if argument4 == "SHIFT" {
    sc = min(argument2,argument3)/64;
    draw_sprite_ext(sprKey_bt_special,0,argument0+(argument2/2),argument1+(argument3/2),sc,sc,0,c_white,ease_fase)
}
else if argument4 == "BACKSPACE" {
    sc = min(argument2,argument3)/64;
    draw_sprite_ext(sprKey_bt_special,1,argument0+(argument2/2),argument1+(argument3/2),sc,sc,0,c_white,ease_fase)
}
else {
    draw_text_colour(argument0+(argument2/2)-1,argument1+(argument3/2)-1,argument4,c_gray,c_gray,c_gray,c_gray,1*ease_fase);
    draw_text_colour(argument0+(argument2/2),argument1+(argument3/2),argument4,c_white,c_white,c_white,c_white,1*ease_fase);
}
/*
if (argument7 == true && ret != -1 && argument4 != " ") {
    draw_sprite_ext(key_highlight_spr,0,argument0+(argument2/2),argument1,global_dpi,global_dpi,0,c_white,1*ease_fase);
    draw_text_colour(argument0+(argument2/2),argument1-(40*global_dpi),argument4,c_white,c_white,c_white,c_white,1*ease_fase);
}*/

return (ret);
