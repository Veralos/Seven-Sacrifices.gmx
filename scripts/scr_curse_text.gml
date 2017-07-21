var text_x = argument0;
var text_y = argument1;
var text = argument2;

draw_set_font(fnt_curse);

draw_set_color(make_color_hsv(100, 172, 32));
draw_text(text_x + random_range(-4, 4), text_y + random_range(-4, 4), text);
draw_set_color(make_color_hsv(100, 172, 196));
draw_text(text_x + random_range(-2, 2), text_y + random_range(-2, 2), text);
