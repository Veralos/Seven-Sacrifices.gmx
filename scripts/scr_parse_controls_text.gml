var text = argument0;

controls_map = ds_map_create();
ds_map_add(controls_map, "<lr>", obj_controls.lr);
ds_map_add(controls_map, "<ud>", obj_controls.ud);
ds_map_add(controls_map, "<a>", obj_controls.a);
ds_map_add(controls_map, "<lrkey>", obj_controls.lrkey);
ds_map_add(controls_map, "<ukey>", obj_controls.ukey);
ds_map_add(controls_map, "<akey>", obj_controls.akey);
ds_map_add(controls_map, "<skey>", obj_controls.skey);
ds_map_add(controls_map, "<dkey>", obj_controls.dkey);

key = ds_map_find_first(controls_map);
for (var i = 0; i < ds_map_size(controls_map); i++) {
    text = string_replace(text, key, ds_map_find_value(controls_map, key));
    key = ds_map_find_next(controls_map, key);
}

ds_map_destroy(controls_map);
    
return text;
