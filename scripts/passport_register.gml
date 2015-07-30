///passport_register(email,username,password)
/*
    Created by Damar
    Used for Darivero Passport registration
    
    Descriptions
    argument0 = email address (string)
    argument1 = username (string)
    argument2 = password (string)
*/
temp_str = "dpe="+argument0+"&dpu="+argument1+"&dpp="+scr_string_encrypt(argument2,salt); //Set temporary string
if scr_string_is_email(argument0) && string_length(argument1) >= 6 && string_length(argument2) >= 8 { //Check if argument0 is email & argument1 length is bigger than or same as 6 & argument2 length is bigger than or same as 8
    return http_post_string(passport_server+"connect.php?method=register",temp_str); //Register to passport and return
}