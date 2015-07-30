///scr_string_is_alphanumeric(string)
/*
    Checks if string is comprised of letters and digits only
    
    Description
    argument0 = string to be checked (string)
*/
if (not(string_length(string_lettersdigits(argument[0])) >= 1)) {
    return false;
} else {
    return true;
}