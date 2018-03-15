/// @description Insert description here
// You can write your code in this editor

if !global.astro_installed
{
	global.astro_installed = true;
	sel_astro = instance_create_depth(735, 500, -1000, obj_astro);
	sel_astro.color = color;
	if txt ==  obj_lookup.letter_name_sound[global.letter]
	{
		global.correct_astro = true;
	}
	instance_destroy();
}
