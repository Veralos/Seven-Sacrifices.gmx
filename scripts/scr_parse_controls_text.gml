var text = argument0;

for (var i = 0; i < ds_list_size(obj_controls.command_list); i++) {
    var key = ds_list_find_value(obj_controls.command_list, i);
    text = string_replace(text, key, ds_map_find_value(obj_controls.command_map, key));
}
    
return text;
