/// @description Insert description here
// You can write your code in this editor

if !is_moving
{
	if mouse_x < move_x && mouse_y < room_height/3
	{
		option = 1;
	}
	else if mouse_x < move_x && mouse_y < room_height*(2/3)
	{
		option = 2;
	}
	else if mouse_x < move_x && mouse_y < room_height
	{
		option = 3;
	}
		
	if option > 0
	{
		if instance_exists(obj_wings)
		{
			with (obj_wings)
			{
				instance_destroy();
			}
		}
		
		o_wings = instance_create_depth(630, 470, -100, obj_wings);
	
		switch option
		{
			case 1:
				o_wings.text_1 = option_1_1;
				o_wings.text_2 = option_1_2;
				break;
			case 2:
				o_wings.text_1 = option_2_1;
				o_wings.text_2 = option_2_2;
				break;
			case 3:
				o_wings.text_1 = option_3_1;
				o_wings.text_2 = option_3_2;
				break;
			default:
				break;
		}
		
		instance_destroy();
	}
}