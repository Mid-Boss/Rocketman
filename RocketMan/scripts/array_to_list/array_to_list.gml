//@arg array

var _array = argument0;

var _length = array_length_1d(_array);
var _list = ds_list_create();

for (var i=0; i<_length; i++) {
	ds_list_add(_list, _array[i]);	
}

return _list;