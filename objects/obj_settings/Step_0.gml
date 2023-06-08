/// @description Insert description here
// You can write your code in this editor
key_esc = keyboard_check_pressed(vk_escape);
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_enter = keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);
if (key_esc) {
	instance_create_layer(x,y,"menu",obj_menu);
	instance_destroy();
}

sel = (sel + key_down - key_up)%4;
if (sel < 0) sel += 4;

switch (sel) {
	case options.FOVSLD:
		global.fov = clamp(global.fov + key_right-key_left, 1, 360);
		break;
	case options.MSENS:
		global.msens = clamp(global.msens + (key_right-key_left)/100,0.01,2);
		break;
	case options.VOLSLD:
		global.gain = clamp(global.gain + (key_right-key_left)/100,0.01,1);
		break;
	case options.VOLTOG:
		if (key_enter) global.mute = !global.mute;
		break;
	default:
		break;
}
