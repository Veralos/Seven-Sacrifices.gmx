var list = argument0;
var volume = argument1;

for (var i = 0; i < ds_list_size(list); i++)
    audio_sound_gain(ds_list_find_value(list, i), volume, 0);
