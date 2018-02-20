/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_black);
draw_set_font(fnt_wings);
if image_xscale == -1
	draw_text(x - 40, y + 20, txt);
else
	draw_text(x + 30, y + 20, txt);
