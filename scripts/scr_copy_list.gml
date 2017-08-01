var old_list = argument0;
var new_list = ds_list_create();

for (var i = 0; i < ds_list_size(old_list); i++)
    ds_list_add(new_list, ds_list_find_value(old_list, i));
    
return new_list;
