///mail_send(recipient,sender,sender_name,subject,content)
/*
    >>Created by Damar (Darivero, inc)<<
    
    Descriptions
    argument0 = recipient email address (string)
    argument1 = sender email address (string)
    argument2 = sender name (string)
    argument3 = subject of email (string)
    argument4 = content of email (text/HTML)
    argument5 = return string (string)
    
*/
temp_str = "mail_recipient="+argument0+"&mail_sender="+argument1+"&mail_sender_name="+argument2+"&mail_subject="+argument3+"&mail_content="+argument4+"&mail_return="+argument5; //Set temporary string
return http_post_string(passport_server+"connect.php?method=mail",temp_str); //Send email

//LICENSE >> FREE TO USE AND EDIT WITHOUT COMMERCIAL (DO NOT SHARE WTHOUT MY PERMISSION)
//Email me >> official@darivero-official.gq