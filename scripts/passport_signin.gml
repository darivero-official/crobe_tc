///passport_signin(username,password,user_data)
/*
    Signing in user to Darivero Passport
    
    Descriptions
    argument0 = username (string)
    argument1 = password (string)
    argument2 = user data to read (tc_uid,tc_email,tc_uname,tc_pass,...) (string ("null" if login only))
*/
var temp_str; //Init temporary string var
temp_str = "dpu="+argument0+"&dpp="+argument1+"&dprd="+argument2; //Set temporary string
return http_post_string(passport_server+"sync.php?method=signin",temp_str); //Login to Passport
