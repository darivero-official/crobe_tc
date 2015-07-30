///passport_login(username,password)
/*
    Created by Damar
    Connecting game to passport.
    Used for Darivero Passport authorization (login)
*/
str = "dpu="+argument0+"&dpp="+argument1;//scr_string_encrypt(argument1,global.salt)
return http_post_string(server+"connect.php?method=login",str);