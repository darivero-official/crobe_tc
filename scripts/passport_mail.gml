///passport_mail(recipient,sender,sender_name,subject,content,return_message)
/*
    Send email to passport user
    
    Descriptions
    argument0 = recipient email address (string)
    argument1 = sender email address (string)
    argument2 = sender name (string)
    argument3 = subject of email (string)
    argument4 = content of email (text/HTML) (string)
    argument5 = return message (string)
    
*/
var temp_str; //Init temporary string var
temp_str = "mail_recipient="+argument0+"&mail_sender="+argument1+"&mail_sender_name="+argument2+"&mail_subject="+argument3+"&mail_content="+argument4+"&mail_return="+argument5; //Set temporary string
return http_post_string(passport_server+"sync.php?method=mail",temp_str); //Send email
