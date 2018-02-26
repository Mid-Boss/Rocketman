///@arg list
///@arg index

var _list = argument0;
var _index = argument1;

var _pos = ds_list_find_index(_list,_index);
ds_list_delete(_list,_pos);