///passport_signin(username,password,data to read from db)
/*
    >> Created by Damar <<
    Connecting game to passport
    Used for Darivero Passport authorization (login)
    
    Descriptions
    argument0 = username (string)
    argument1 = password (string)
    argument2 = data to read from database (string (null if login only))
*/
str = "dpu="+argument0+"&dpp="+argument1+"&dprd="+argument2; //Set temporary string
return http_post_string(passport_server+"sync.php?method=signin",str); //Login to Passport