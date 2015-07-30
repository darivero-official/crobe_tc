///scr_string_mask(symbol,string)
/*
    Masking a string like ********
    
    Descriptions
    argument0 = symbol to be used for masking a string (string(symbol))
    argument1 = string to be masked (string)
*/
return string_repeat(argument0, string_length(argument1));