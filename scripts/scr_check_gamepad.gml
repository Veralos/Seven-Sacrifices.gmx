var gamepad = argument0;

if (gamepad_is_connected(0)) {
    var i = 0;
    buttons[i++] = gp_face1;
    buttons[i++] = gp_face2;
    buttons[i++] = gp_face3;
    buttons[i++] = gp_face4;
    buttons[i++] = gp_padd;
    buttons[i++] = gp_padl;
    buttons[i++] = gp_padr;
    buttons[i++] = gp_padu;
    buttons[i++] = gp_shoulderl;
    buttons[i++] = gp_shoulderlb;
    buttons[i++] = gp_shoulderr;
    buttons[i++] = gp_shoulderrb;
    buttons[i++] = gp_select;
    buttons[i++] = gp_start;
    buttons[i++] = gp_stickl;
    buttons[i++] = gp_stickr;
    
    for (var i = 0; i < array_length_1d(buttons); i++) {
        if (gamepad_button_check(0, buttons[i]))
            gamepad = true;
    }
    
    var i = 0;
    axes[i++] = gp_axislh;
    axes[i++] = gp_axislv;
    axes[i++] = gp_axisrh;
    axes[i++] = gp_axisrv;
    
    for (var i = 0; i < array_length_1d(axes); i++) {
        if (gamepad_axis_value(0, axes[i]) != 0)
            gamepad = true;
    }
    
    if (keyboard_check(vk_anykey))
        gamepad = false;
}
else
    gamepad = false;
    
return gamepad;
