/// @description Insert description here
// You can write your code in this editor

key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
key_enter = keyboard_check_pressed(vk_enter);

sel = (sel + key_down - key_up)%4;
if (sel < 0) sel += 4
if key_enter {
	switch sel {
		case start.START:
			room_goto_next();
			break;
		case start.OPTIONS:
//			room_goto();
			break;
		case start.CREDITS:
//			room_goto();
			break;
		case start.QUIT:
			game_end();
			break;
		default:
			break;
	}
}