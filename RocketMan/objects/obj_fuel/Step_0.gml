/// @description Insert description here
// You can write your code in this editor

if global.fuel_installed && (global.phase == 1)
{
	with (obj_factory)
	{
		instance_destroy();
	}
	
	global.phase += 1;
}

if global.phase != 1
{
	if x < room_width/2
		instance_destroy();
}