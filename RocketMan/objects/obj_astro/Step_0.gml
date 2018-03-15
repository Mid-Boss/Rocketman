/// @description Insert description here
// You can write your code in this editor

if global.astro_installed && (global.phase == 2)
{
	with (obj_factory)
	{
		instance_destroy();
	}
	
	global.phase += 1;
}

if global.phase != 2
{
	if x < room_width/2
		instance_destroy();
}