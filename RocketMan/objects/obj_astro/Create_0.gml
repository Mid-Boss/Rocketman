/// @description Insert description here
// You can write your code in this editor

color = scr_random_color();

astro_count = instance_number(obj_fuel);

for(var i=0;i<astro_count-1;i++)
{
	curr_astro = instance_find(obj_fuel,i);
	if curr_astro != id
	{
		while curr_astro.color == color
		{
			color = scr_random_color();
		}
	}
}

dw_spr = false;