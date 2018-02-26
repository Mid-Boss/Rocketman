///@arg quantity
///@arg letter

var _quantity = argument0;
var _letter = argument1;
var _drawn_list = ds_list_create();

var _upper_case_list = array_to_list(obj_lookup.upper_case);
var _lower_case_list = array_to_list(obj_lookup.lower_case);

//Correct Letters First
ds_list_add(_drawn_list, obj_lookup.upper_case[_letter]);
ds_list_add(_drawn_list, obj_lookup.lower_case[_letter]);
find_and_delete_from_list(_upper_case_list, obj_lookup.upper_case[_letter]);
find_and_delete_from_list(_lower_case_list, obj_lookup.lower_case[_letter]);

if _quantity <= 2 exit;
_quantity = _quantity - 2;

var _odd = false;
if (_quantity mod 2 != 0) {
	_odd = true;
}
var _sub_quantity = floor(_quantity/2);

ds_list_shuffle(_upper_case_list);
ds_list_shuffle(_lower_case_list);

for (var i=0; i<_sub_quantity; i++) {
	var _draw = ds_list_find_value(_upper_case_list,0);
	ds_list_add(_drawn_list,_draw);
	ds_list_delete(_upper_case_list,0);
}

for (var j=0; j<_sub_quantity; j++) {
	var _draw = ds_list_find_value(_lower_case_list,0);
	ds_list_add(_drawn_list,_draw);
	ds_list_delete(_lower_case_list,0);
}

if _odd {
	var _draw = ds_list_find_value(choose(_upper_case_list,_lower_case_list),0);
	ds_list_add(_drawn_list,_draw);
}

ds_list_destroy(_upper_case_list);
ds_list_destroy(_lower_case_list);

ds_list_shuffle(_drawn_list);
return _drawn_list;