///keyboard_get_easing(t,ease_in_value)
/*
    This script is imported from another source. Credit to Manuel 777 invadergames.net
*/
var t;
t = argument0;
if argument1 >= 0
   return (keyboard_set_ease_in(argument1,t));
else
   return (1-keyboard_set_ease_in(abs(argument1),1-t));