///scr_mail_verification(username,email,password,verification code)
/*
    Created by Damar
    Email verification template
    
    Descriptions
    argument0 = username (string)
    argument1 = email (string)
    argument2 = password (string)
    argument3 = verification code (string)
*/
var dp_tmp_mail_verification;
dp_tmp_mail_verification = '
<!DOCTYPE html>
<html>
<head>
<title>Email verification</title>
<link rel="stylesheet" type="text/css" href="http://passport.darivero.ml/templates/email/verification/style.css">
</head>
<body>
<div class="content">
<h1>Welcome to Passport</h1>
<p>Dear '+argument0+',</p>
<p>Thank you for subscribing and registering on Darivero Passport. Next is to verify this email address by entering a verification code.</p>
<table id="passport-card">
<tr>
<td>
<table>
<tr>
<td>
<img src="passport.png">
</td>
</tr>
</table>
</td>
<td>
<table>
<tr>
<td>
Email
</td>
<td>
'+argument1+'
</td>
</tr>
<tr>
<td>
Username
</td>
<td>
'+argument0+'
</td>
</tr>
<tr>
<td>
Password
</td>
<td>
'+argument2+'
</td>
</tr>
<tr>
<td style="padding-right: 5px;">
Verification code
</td>
<td>
<i>'+argument3+'</i>
</td>
</tr>
</table>
</td>
</tr>
</table>
<p>If the account is yours, then copy the verification code above and keep this email secret. If not, you can cancel the account by contacting us <a href="mailto:cs@passport.darivero.ml">here</a>.</p>
<p>You can cancel your subscription by disabling through settings in the application and can be activated again at any time.</p>
<p>If you want to learn more about our products, please visit our official site <a href="http://darivero.ml">here</a>.</p>
<p><i>Sincerely</i>,</br>Darivero 2015</p>
</div>
</body>
</html>
'