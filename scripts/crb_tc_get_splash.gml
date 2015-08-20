var temp_str; //Init temporary string var
temp_str = "tc_id="+argument0+"&tc_read_data="+argument1; //Set temporary string
return http_post_string(passport_server+"sync.php?method=crb_tc_splash",temp_str); //Login to Passport