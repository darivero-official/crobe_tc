///crobe_get_splash(splash_id,splash_data)
/*
    Used for retrieving splash image from database
    
    Descriptions
    argument0 = splash image id (string)
    argument1 = splash image data to read (tc_id,tc_imgurl,tc_imgsurl,...) (string)
*/
var temp_str; //Init temporary string var
temp_str = "tc_id="+argument0+"&tc_read_data="+argument1; //Set temporary string
return http_post_string(passport_server+"sync.php?method=crb_tc_splash",temp_str); //Login to Passport
