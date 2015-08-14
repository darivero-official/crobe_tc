///scr_ini_write_key(is_string,ini_file,section,key,value)
if argument0 = 1 { //Check if argument0 is 1
    ini_open(argument1); //Open ini 1 file
    temp_val = ini_write_string(argument2,argument3,argument4); //Set temp_val to ini write key argument3
    ini_close(); //Close ini 1 file
}
else {
    ini_open(argument1); //Open ini 1 file
    temp_val = ini_write_real(argument2,argument3,argument4); //Set temp_val to ini write key argument3
    ini_close(); //Close ini 1 file
}
return temp_val; //Return temp_val
