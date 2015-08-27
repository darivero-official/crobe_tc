///string_fit_width(string,width,break)
/*
    Fit the given string to the given width
    
    Descriptions
    argument0 = string (string)
    argument1 = width (real)
    argument2 = string to append (string)
*/
//GMLscripts.com/license
{
    var str,ext,wid;
    str = argument0;
    ext = argument2;
    wid = max(argument1, string_width(ext));
    if (string_width(str) <= wid) return str;
    while (string_width(str + ext) > wid) {
        str = string_delete(str, string_length(str), 1);
    } 
    return str + ext;
}