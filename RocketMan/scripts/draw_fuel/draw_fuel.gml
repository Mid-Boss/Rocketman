///@arg quantity
///@arg letter

var _quantity = argument0;
var _letter = argument1;
var _drawn_list = ds_list_create();

var _phonics_list = array_to_list(obj_lookup.letter_name_sound);

//Correct Letter First
ds_list_add(_drawn_list, obj_lookup.letter_name_sound[_letter]);
find_and_delete_from_list(_phonics_list, obj_lookup.letter_name_sound[_letter]);

if _quantity <= 1 exit;
_quantity = _quantity - 1;

ds_list_shuffle(_phonics_list);

for (var i=0; i<_quantity; i++) {
	var _draw = ds_list_find_value(_phonics_list,i);
	ds_list_add(_drawn_list,_draw);
}

ds_list_destroy(_phonics_list);

ds_list_shuffle(_drawn_list);
return _drawn_list;