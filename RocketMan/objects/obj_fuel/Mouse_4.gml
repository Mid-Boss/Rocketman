/// @description Insert description here
// You can write your code in this editor

if !global.fuel_installed
{
	global.fuel_installed = true;
	sel_fuel = instance_create_depth(735, 575, -1000, obj_fuel);
	sel_fuel.color = color;
	if txt ==  obj_lookup.letter_name_sound[global.letter]
	{
		global.correct_fuel = true;
	}
	instance_destroy();
}
