/// @description Insert description here
// You can write your code in this editor

start_x = -250;
move_x = 0;
spd = 10;
y_dis = 100;
x_dis = 20;
option = 0;
is_moving = false;

/*correct_capital_option = string_char_at(global.word, 1);
correct_lower_option = string_lower(correct_capital_option);

incorrect_capital_option_1 = chr(irandom_range(65, 90));
while (incorrect_capital_option_1 == correct_capital_option)
{
	incorrect_capital_option_1 = chr(irandom_range(65, 90));
}
incorrect_lower_option_1 = string_lower(incorrect_capital_option_1);

incorrect_capital_option_2 = chr(irandom_range(65, 90));
while ((incorrect_capital_option_2 == incorrect_capital_option_1) || 
(incorrect_capital_option_2 == correct_capital_option))
{
	incorrect_capital_option_2 = chr(irandom_range(65, 90));
}
incorrect_lower_option_2 = string_lower(incorrect_capital_option_2);

lst_wing = ds_list_create();

ds_list_add(lst_wing, correct_capital_option, correct_lower_option, 
incorrect_capital_option_1, incorrect_lower_option_1, incorrect_capital_option_2, 
incorrect_lower_option_2);

ds_list_shuffle(lst_wing);*/

lst_wing = draw_wings(6,global.letter);

wing_1 = instance_create_layer(start_x + x_dis, y_dis, "Instances", obj_wings);
wing_1.txt = lst_wing[| 0];
wing_2 = instance_create_layer(start_x + x_dis, room_height/3 + y_dis, "Instances", obj_wings);
wing_2.txt = lst_wing[| 1];
wing_3 = instance_create_layer(start_x + x_dis, room_height*(2/3) + y_dis, "Instances", obj_wings);
wing_3.txt = lst_wing[| 2];
wing_4 = instance_create_layer(start_x + x_dis*8, y_dis, "Instances", obj_wings);
wing_4.txt = lst_wing[| 3];
wing_5 = instance_create_layer(start_x + x_dis*8, room_height/3 + y_dis, "Instances", obj_wings);
wing_5.txt = lst_wing[| 4];
wing_6 = instance_create_layer(start_x + x_dis*8, room_height*(2/3) + y_dis, "Instances", obj_wings);
wing_6.txt = lst_wing[| 5];