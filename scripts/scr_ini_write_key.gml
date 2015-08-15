///scr_ini_write_key(is_string,section,key,value,init)
var temp_val;
ini_open(global.v_ini1); //Open ini 1 file
if argument0 = 1 { //Check if argument0 is 1
    ini_write_string(argument1,argument2,argument3); //Ini write key
    temp_val = ini_read_string(argument1,argument2,argument3); //Set temp_val to ini read key argument3
    if temp_val = argument3 { //Check if succeed
        return string(temp_val); //Return temp_val
    }
}
else {
    ini_write_real(argument1,argument2,argument3); //Ini write key
    temp_val = ini_read_real(argument1,argument2,argument3); //Set temp_val to ini read key argument3
    if temp_val = argument3 { //Check if succeed
        return real(temp_val); //Return temp_val
    }
}
