///popup_auth_display(type)
/*
    Display authorization popup
    
    Description
    argument0 = message type (0 = login, 1 = register) (real)
*/
global.v_msg_auth_type = argument0; //Set auth type
if !instance_exists(objPop_auth) { //Check if objPop_auth is not exists
    instance_create(display_get_width()/2,display_get_height()/2,objPop_auth); //Display popup
}
else {
    //objPop_auth.v_msg_type = argument0;
}
