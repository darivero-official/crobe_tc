///string_numeric(string)
/*
    Checks if string is comprised of digits only
    
    Description
    argument0 = string (string)
*/
//GMLscripts.com/license
if (not(string_length(string_digits(argument[0])) >= 1)) {
    return false;
} else {
    return true;
}
