///ds_map_add_replace(id,key,value,user)
/*
    Used for add and/or replace item in the ds map
    
    Descriptions
    argument0 = id (variable)
    argument1 = key (string)
    argument2 = value (string)
    argument3 = user data structure (boolean)
*/
var temp_val; //Create temporary variable
if ds_map_exists(argument0,argument1) { //Check if key is exists in the ds map
    ds_map_replace(argument0,argument1,argument2); //Replace key from ds map
}
else {
    ds_map_add(argument0,argument1,argument2); //Add key to ds map
}
if ds_map_find_value(argument0,argument1) = argument2 { //Check if found value is argument2
    if argument3 = 1 { //Check if argument3 is 1 (user ds map)
        ds_map_secure_save(global.v_ds_map_user,global.v_ds_map_user_filename); //Save user ds map
    }
    else {
        ds_map_secure_save(global.v_ds_map_settings,global.v_ds_map_settings_filename); //Save settings ds map
    }
}
else {
    //Nothing yet
}
temp_val = ds_map_find_value(argument0,argument1); //Set temp_val to found value
return temp_val; //Return the found value