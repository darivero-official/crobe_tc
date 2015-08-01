/*
    This script is imported from another source. Credit to Manuel 777 invadergames.net
*/
/*************************************************
 **  Usage example
 **  Having declared 'keyboard' as < 0 before!
 **
  
    if mouse_check_button_pressed(mb_left) {
        keyboard = open_keyboard(0, email);
    }
    if instance_exists(keyboard) {
        if keyboard.children == 0 {
            email = keyboard.keyboard_string;
        }
    }

*************************************************/

obj = instance_create(0,0,objKeyboard);
obj.children = argument0;
keyboard_string = argument1;
return (obj);
