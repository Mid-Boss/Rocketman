/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(start_x + move_x, room_height, move_x, room_height, false);
draw_set_color(c_red);
draw_line(start_x + move_x, room_height/3, move_x, room_height/3);
draw_line(start_x + move_x, room_height*(2/3), move_x, room_height*(2/3));