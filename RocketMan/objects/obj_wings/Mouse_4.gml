/// @description Insert description here
// You can write your code in this editor

if !global.wing_1_installed
{
	global.wing_1_installed = true;
	l_wing = instance_create_layer(630, 475, "Instances", obj_wings);
	l_wing.txt = txt;
	if l_wing.txt == global.correct_text_lower || l_wing.txt == global.correct_text_upper
	{
		global.correct_wing_1 = true;
	}
	instance_destroy();
}
else if !global.wing_2_installed
{
	global.wing_2_installed = true;
	r_wing = instance_create_layer(900, 475, "Instances", obj_wings);
	r_wing.image_xscale = -1;
	r_wing.txt = txt;
	if r_wing.txt == global.correct_text_lower || r_wing.txt == global.correct_text_upper
	{
		global.correct_wing_2 = true;
	}
	instance_destroy();
}
else
{
	with (obj_factory)
	{
		instance_destroy();
	}
}

