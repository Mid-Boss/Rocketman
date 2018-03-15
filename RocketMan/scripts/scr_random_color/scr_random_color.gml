color_lst = ds_list_create();

color_lst = array_to_list(obj_lookup.color);

ds_list_shuffle(color_lst);

var _color = color_lst[| 0];

ds_list_destroy(color_lst);

return _color;