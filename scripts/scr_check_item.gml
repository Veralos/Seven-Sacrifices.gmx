var item = argument0;

var item_map = ds_map_create();
ds_map_add(item_map, "Lantern", 0);
ds_map_add(item_map, "Whip", 1);
ds_map_add(item_map, "Gun", 2);
ds_map_add(item_map, "Grappling Hook", 3);
ds_map_add(item_map, "Dash Boots", 4);
ds_map_add(item_map, "Amulet", 5);

var result = false;
if (instance_exists(obj_control))
    result = ds_list_find_index(obj_control.item_list, ds_map_find_value(item_map, item)) > -1

ds_map_destroy(item_map);

return result;
