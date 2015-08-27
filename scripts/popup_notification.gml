///popup_notification(text,error,time(s))
/*
    Display a small popup for notification at the top corner
    
    Descriptions
    argument0 = notification text (string)
    argument1 = error notification (boolean)
    argument1 = notification timer (real)
*/
global.v_notif = argument0; //Set notification text
global.v_notif_type = argument1; //Set notification type
global.v_notif_timer = argument2; //Set notification timer
instance_create(0,0,objPop_notification); //Display message