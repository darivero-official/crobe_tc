///string_alphanumeric(string)
/*
    Checks if string is comprised of letters and digits only
    
    Description
    argument0 = string (string)
*/
//GMLscripts.com/license
if (not(string_length(string_lettersdigits(argument[0])) >= 1)) {
    return false;
} else {
    return true;
}