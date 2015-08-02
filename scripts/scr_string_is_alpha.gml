///scr_string_is_alpha(string)

/**
 * Checks if string is comprised of letters only
 *
 * @param  string The input string
 * @return True if the string is comprised of letters only
 */

if (not(string_length(string_letters(argument[0])) >= 1)) {
    return false;
} else {
    return true;
}
