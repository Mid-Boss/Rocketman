/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(start_x + move_x, room_height, move_x, room_height, false);
draw_set_color(c_red);
draw_line(start_x + move_x, room_height/3, move_x, room_height/3);
draw_line(start_x + move_x, room_height*(2/3), move_x, room_height*(2/3));

draw_sprite(spr_wings, 1, start_x + move_x + x_dis, 0+y_dis);
draw_sprite(spr_wings, 1, start_x + move_x + x_dis, room_height/3 + y_dis);
draw_sprite(spr_wings, 1, start_x + move_x + x_dis, room_height*(2/3) + y_dis);

draw_set_color(c_black);
draw_set_font(fnt_wings);
draw_text(start_x + move_x + x_dis + 30, 0+y_dis + 20, option_1_1);
draw_text(start_x + move_x + x_dis + 30, room_height/3+y_dis + 20, option_2_1);
draw_text(start_x + move_x + x_dis + 30, room_height*(2/3)+y_dis + 20, option_3_1);
draw_text(start_x + move_x + x_dis + 220, 0+y_dis + 20, option_1_2);
draw_text(start_x + move_x + x_dis + 220, room_height/3+y_dis + 20, option_2_2);
draw_text(start_x + move_x + x_dis + 220, room_height*(2/3)+y_dis + 20, option_3_2);