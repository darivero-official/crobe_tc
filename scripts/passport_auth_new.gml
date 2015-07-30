///passport_auth(username,password)
/*
    Created by Damar
    Used for Darivero Passport authorization (login)
    
    Descriptions
    argument0 = username (string)
    argument1 = password (string)
*/
temp_str = "dpu="+argument0+"&dpp="+scr_string_encrypt(argument1,salt); //Set temporary string
return http_post_string(passport_server+"connect.php?method=login",temp_str); //Auth and return