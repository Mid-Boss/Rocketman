///@arg quantity
///@arg letter

var _quantity = argument0;
var _letter = argument1;
var _drawn_list = ds_list_create();

//List of correct words
var _correct_word_list = two_d_array_index_to_list(obj_lookup.letter_string, _letter);
find_and_delete_from_list(_correct_word_list, obj_lookup.letter_string[_letter, global.word]);

//list of incorrect letters
var _height = array_height_2d(obj_lookup.letter_string);
var _incorrect_draw_letter_list = ds_list_create();
for (var h = 0; h<_height; h++) {
	ds_list_add(_incorrect_draw_letter_list, h);
}
ds_list_delete(_incorrect_draw_letter_list, _letter);

//Correct Letters First
ds_list_shuffle(_correct_word_list);
var _draw = ds_list_find_value(_correct_word_list, 0);
ds_list_add(_drawn_list, _draw);
_draw = ds_list_find_value(_correct_word_list, 1);
ds_list_add(_drawn_list, _draw);
ds_list_destroy(_correct_word_list);

if _quantity <= 2 exit;
_quantity = _quantity - 2;

var _odd = false;
if (_quantity mod 2 != 0) {
	_odd = true;
}

var _sub_quantity = floor(_quantity/2);

ds_list_shuffle(_incorrect_draw_letter_list);

for (var i=0; i<_sub_quantity; i++) {
	var _letter_drawn = ds_list_find_value(_incorrect_draw_letter_list, i);
	var _incorrect_word_list = two_d_array_index_to_list(obj_lookup.letter_string, _letter_drawn);
	ds_list_shuffle(_incorrect_word_list);
	_draw = ds_list_find_value(_incorrect_word_list, 0);
	ds_list_add(_drawn_list, _draw);
	_draw = ds_list_find_value(_incorrect_word_list, 1);
	ds_list_add(_drawn_list, _draw);
	ds_list_destroy(_incorrect_word_list);
}

if (_odd) {
	var _letter_drawn = ds_list_find_value(_incorrect_draw_letter_list, i+1);
	var _incorrect_word_list = two_d_array_index_to_list(obj_lookup.letter_string, _letter_drawn);
	ds_list_shuffle(_incorrect_word_list);
	_draw = ds_list_find_value(_incorrect_word_list, 0);
	ds_list_add(_drawn_list, _draw);
	ds_list_destroy(_incorrect_word_list);
}

ds_list_destroy(_incorrect_draw_letter_list);

ds_list_shuffle(_drawn_list);
return _drawn_list;