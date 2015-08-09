///scr_pop_auth(type)
/*
    Created by Damar
    Used for display popup authorization
    
    Description
    argument0 = message type (real)
*/
global.v_msg_auth_type = argument0; //(0 = login, 1 = register)
if !instance_exists(objPop_auth) { //Check if objPop_auth is not exists
    instance_create(display_get_width()/2,display_get_height()/2,objPop_auth); //Display popup
}
else {
    //objPop_auth.v_msg_type = argument0;
}