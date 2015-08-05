///passport_signin(username,password)
/*
    Created by Damar
    Connecting game to passport.
    Used for Darivero Passport authorization (login)
*/
str = "dpu="+argument0+"&dpp="+argument1; //Set temporary string
return http_post_string(passport_server+"connect.php?method=signin",str); //Login to Passport
