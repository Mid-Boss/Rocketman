/// @description Insert description here
// You can write your code in this editor

if global.wing_1_installed && global.wing_2_installed && (global.phase == 0)
{
	with (obj_factory)
	{
		instance_destroy();
	}
	
	global.phase += 1;
}

if global.phase != 0
{
	if x < room_width/2
		instance_destroy();
}