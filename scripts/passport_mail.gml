///passport_mail(recipient,sender,sender_name,subject,content)
/*
    Created by Damar (Darivero, inc)
    Used for send email to Passport users
    
    Descriptions
    argument0 = recipient email address
    argument1 = sender email address
    argument2 = sender name
    argument3 = subject of email
    argument4 = content of email (text/HTML)
    
*/
temp_str = "mail_recipient="+argument0+"&mail_sender="+argument1+"&mail_sender_name="+argument2+"&mail_subject="+argument3+"&mail_content="+argument4; //Set temporary string
return http_post_string(passport_server,temp_str); //Send email

//LICENSE >> FREE TO USE AND EDIT WITHOUT COMMERCIAL (DO NOT SHARE WTHOUT MY PERMISSION)
//Email me >> official@darivero-official.gq