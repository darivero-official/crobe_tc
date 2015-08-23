///string_decrypt(string, password)
/*
    Decrypt a string with a password
    
    Descriptions
    argument0 = string (string)
    argument1 = password (string)
*/
//GMLscripts.com/license
var result, password, str_length, password_length, str_position, password_position, str_char, password_char;

result = argument[0];
password = argument[1];

str_length = string_length(result);
password_length = string_length(password);

password_position = 1;
for (str_position = 1; str_position <= str_length; str_position += 1) {

    str_char = string_char_at(result, str_position);
    password_char = string_char_at(password, password_position);
    str_char = ord(str_char);
    password_char = ord(password_char);
    str_char -= password_char;
    if (str_char < 0) {
        str_char += 256;
    }
    str_char = chr(str_char);
    result = string_delete(result, str_position, 1);
    result = string_insert(str_char, result, str_position);
    password_position += 1;
    if (password_position > password_length) {
        password_position = 1;
    }
    
}

return result; //Return a given string
