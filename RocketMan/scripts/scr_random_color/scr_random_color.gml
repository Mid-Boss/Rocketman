color_lst = ds_list_create();

color_lst = array_to_list(obj_lookup.color);

ds_list_shuffle(color_lst);

return color_lst[| 0];