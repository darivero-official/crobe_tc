///passport_signup(email,username,password)
/*
    Used for Darivero Passport registration
    
    Descriptions
    argument0 = email address (string)
    argument1 = username (string)
    argument2 = password (string)
*/
temp_str = "dpe="+argument0+"&dpu="+argument1+"&dpp="+argument2; //Set temporary string
return http_post_string(passport_server+"sync.php?method=signup",temp_str); //Register to passport