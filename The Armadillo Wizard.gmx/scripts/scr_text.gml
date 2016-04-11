//scr_text("The Text", speed, character, duration);

txt = instance_create(620,705,obj_text);

with(txt)
{
    padding = 8;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt_speech;
    character = argument2;
    duration = argument3;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
    
    boxwidth = 320;
    boxheight = 70;

}
