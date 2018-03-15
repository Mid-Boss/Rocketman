/// @description Insert description here
// You can write your code in this editor

start_x = -250;
move_x = 0;
spd = 10;
y_dis = 100;
x_dis = 20;
option = 0;
is_moving = false;

switch global.phase
{
	case 0: //Wings
	{	
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
	}
	break;
	case 1: //Fuel
	{	
		lst_fuel = draw_fuel(3,global.letter);

		fuel_1 = instance_create_layer(start_x + x_dis, y_dis, "Instances", obj_fuel);
		fuel_1.sound = lst_fuel[| 0];
		fuel_2 = instance_create_layer(start_x + x_dis, room_height/3 + y_dis, "Instances", obj_fuel);
		fuel_2.sound = lst_fuel[| 1];
		fuel_3 = instance_create_layer(start_x + x_dis, room_height*(2/3) + y_dis, "Instances", obj_fuel);
		fuel_3.sound = lst_fuel[| 2];
	}
	break;
	case 2: //Astronauts
	{	
		lst_astro = draw_astronauts(3,global.letter);

		astro_1 = instance_create_layer(start_x + x_dis, y_dis, "Instances", obj_astro);
		astro_1.txt = lst_astro[| 0];
		astro_2 = instance_create_layer(start_x + x_dis, room_height/3 + y_dis, "Instances", obj_astro);
		astro_2.txt = lst_astro[| 1];
		astro_3 = instance_create_layer(start_x + x_dis, room_height*(2/3) + y_dis, "Instances", obj_astro);
		astro_3.txt = lst_astro[| 2];
	}
	break;
}