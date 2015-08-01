///scr_string_fit_to_width(string,width)

/**
 * Formats a given string to fit in a specified pixel width
 * by inserting new line characters accordingly
 *
 * @param  string The input string to be formatted
 * @param  width  The width in pixels to fit the string in to
 * @return The string with line breaks
 */

var text, subStr, strWidth, currChar, lastGood, chunkStart
//lastGood = 0;
strWidth = 0;
text = argument0;
draw_width = argument1;
// the character to check, starting on the left
currChar = 1;
// the last space position inside the current chunk
lastGood = 1;
// the first position inside the current chunk
chunkStart = 1;

// loop through the string until a space is found
while (string_width(text) > strWidth && currChar <= string_length(text)) {
    // if the char is a space, then check for line break or last character in the string
    if (string_char_at(text, currChar) == " " || currChar == string_length(text)) {
        // create next string chunk
        subStr = string_copy(text, chunkStart, currChar - chunkStart);
        // check if chunk width is too wide
        if (string_width(subStr) > strWidth) {
            // insert a line break and delete the space
            text = string_delete(text, lastGood, 1);
            text = string_insert( "#", text, lastGood);
            
            // next chunk starts just after line break
            chunkStart = lastGood + 1;
        } else {
            lastGood = currChar;
        }
    }
    
    // go to the next character
    currChar++;
}

return text;
