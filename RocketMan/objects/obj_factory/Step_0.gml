/// @description Insert description here
// You can write your code in this editor

if (start_x + move_x) < 0
{
	move_x += spd;
	is_moving = true;
	switch global.phase
	{
		case 0:
		{
			wing_1.x += spd;
			wing_2.x += spd;
			wing_3.x += spd;
			wing_4.x += spd;
			wing_5.x += spd;
			wing_6.x += spd;
		}
		break;
		case 1:
		{
			fuel_1.x += spd;
			fuel_2.x += spd;
			fuel_3.x += spd;
		}
		break;
		case 2:
		{
			astro_1.x += spd;
			astro_2.x += spd;
			astro_3.x += spd;
		}
		break;
	}
}
else
	is_moving = false;



		
	
		

