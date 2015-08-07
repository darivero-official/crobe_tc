///scr_string_is_numeric(string)

/**
 * Checks if string is comprised of digits only
 *
 * @param  string The input string
 * @return True if the string is comprised of digits only
 */

if (not(string_length(string_digits(argument[0])) >= 1)) {
    return false;
} else {
    return true;
}