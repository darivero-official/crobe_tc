///passport_signup(email,username,password)
/*
    Signing up user to Darivero Passport
    
    Descriptions
    argument0 = user email address (string)
    argument1 = username (string)
    argument2 = password (string)
*/
var temp_str; //Init temporary string var
temp_str = "dpe="+argument0+"&dpu="+argument1+"&dpp="+argument2; //Set temporary string
return http_post_string(passport_server+"sync.php?method=signup",temp_str); //Register to passport
