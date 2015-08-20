///passport_signin(username,password,data to read from db)
/*
    Connecting game to passport
    Used for Darivero Passport authorization (login)
    
    Descriptions
    argument0 = username (string)
    argument1 = password (string)
    argument2 = data to read from database (string (null if login only))
*/
var temp_str; //Init temporary string var
temp_str = "dpu="+argument0+"&dpp="+argument1+"&dprd="+argument2; //Set temporary string
return http_post_string(passport_server+"sync.php?method=signin",temp_str); //Login to Passport