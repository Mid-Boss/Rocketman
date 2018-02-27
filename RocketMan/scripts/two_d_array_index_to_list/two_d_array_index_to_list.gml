//@arg array
//@arg index

var _array = argument0;
var _index = argument1;

var _length = array_length_2d(_array, _index);
var _list = ds_list_create();

for (var i=0; i<_length; i++) {
	ds_list_add(_list, _array[_index, i]);	
}

return _list;