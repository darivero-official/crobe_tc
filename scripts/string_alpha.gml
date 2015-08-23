///string_alpha(string)
/*
    Checks if string is comprised of letters only
    
    Description
    argument0 = string (string)
*/
//GMLscripts.com/license
if (not(string_length(string_letters(argument[0])) >= 1)) {
    return false;
} else {
    return true;
}
