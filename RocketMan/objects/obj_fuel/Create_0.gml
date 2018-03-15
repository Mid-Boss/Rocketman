sound = noone;
color = scr_random_color();

fuel_count = instance_number(obj_fuel);

for(var i=0;i<fuel_count-1;i++)
{
	curr_fuel = instance_find(obj_fuel,i);
	if curr_fuel != id
	{
		while curr_fuel.color == color
		{
			color = scr_random_color();
		}
	}
}