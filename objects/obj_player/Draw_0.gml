/// Draw a solid green 32 by 32 square without a sprite.
var previous_colour = draw_get_color();
var previous_alpha = draw_get_alpha();
draw_set_color(c_lime);
draw_set_alpha(1);
draw_rectangle(x - half_size, y - half_size, x + half_size, y + half_size, false);
draw_set_color(previous_colour);
draw_set_alpha(previous_alpha);
