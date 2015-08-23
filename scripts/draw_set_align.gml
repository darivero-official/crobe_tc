///draw_set_align(text_align)
/*
    Set text alignment to the given argument
    
    Description
    argument0 = text align (left,center,right) (string)
*/
if argument0 = "center" {
    draw_set_halign(fa_center); //Set horizontal align to center
    draw_set_valign(fa_middle); //Set vertical align to middle
}
else if argument0 = "left" {
    draw_set_halign(fa_left); //Set horizontal align to left
    draw_set_valign(fa_middle); //Set vertical align to middle
}
else if argument0 = "right" {
    draw_set_halign(fa_right); //Set horizontal align to right
    draw_set_valign(fa_middle); //Set vertical align to middle
}

//THIS SCRIPT IS JUST FOR DRAW / DRAW GUI EVENT (Damar)
