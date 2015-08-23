///string_wordwrap_width(string,width,break,split)
/*
    Wrap the given string to the given width
    
    Descriptions
    argument0 = string (string)
    argument1 = width (real)
    argument2 = string to append (string)
    argument3 = split word (boolean)
*/
//GMLscripts.com/license
{
    var pos_space, pos_current, text_current, text_output, line_current;
    pos_space = -1;
    pos_current = 1;
    text_current = argument0;
    if (is_real(argument2)) argument2 = "#";
    text_output = "";
    while (string_length(text_current) >= pos_current) {
        if (string_width(string_copy(text_current,1,pos_current)) > argument1) {
            //if there is a space in this line then we can break there
            if (pos_space != -1) {
                text_output += string_copy(text_current,1,pos_space) + string(argument2);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_space+1,string_length(text_current)-(pos_space));
                pos_current = 1;
                pos_space = -1;
            } else if (argument3) {
                //if not, we can force line breaks
                text_output += string_copy(text_current,1,pos_current-1) + string(argument2);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_current,string_length(text_current)-(pos_current-1));
                pos_current = 1;
                pos_space = -1;
            }
        }
        if (string_char_at(text_current,pos_current) == " ") pos_space = pos_current;
        pos_current += 1;
    }
    if (string_length(text_current) > 0) text_output += text_current;
    return text_output;
}
