///keyboard_open(children,var,multiple line)
/*
    This script is imported from another source. Credit to Manuel 777 invadergames.net
    Used for showing the keyboard
    
    Descriptions
    argument0 = children (i dunno)
    argument1 = variable to be assign (variable)
    argument2 = multiple line (bool)
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

obj = instance_create(0,0,objKeyboard); //Create objKeyboard
obj.children = argument0; //Set keyboard children
keyboard_string = argument1; //Set keyboard string
obj.multiple_line = argument2; //Set multiple line (bool)
return (obj);
