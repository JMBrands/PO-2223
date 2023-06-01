/// @description Insert description here
// You can write your code in this editor
if raycasting {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_q = keyboard_check(ord("Q"));
	key_e = keyboard_check(ord("E"));
	key_f = keyboard_check_pressed(ord("F"));
	key_z = keyboard_check(ord("Z"));
	key_x = keyboard_check(ord("X"));
	key_esc = keyboard_check_pressed(vk_escape);

	arrow_up = keyboard_check(vk_up);
	arrow_down = keyboard_check(vk_down);
	spd = max(spd+key_z-key_x,1);
	global.fov = max(global.fov+arrow_up-arrow_down,1);

	if key_esc {
		global.mousecapture = !global.mousecapture;
		display_mouse_set(683,384);
		if (global.mousecapture) window_set_cursor(cr_none); else window_set_cursor(cr_default);
		if instance_exists(obj_menu) {
			with (obj_menu) {
				instance_destroy();
			}
			raycasting = true;
		} else {
			instance_create_layer(x,y,layer,obj_menu);
			raycasting = false;
		}
	}

	if key_f {
		correcting = !correcting;
	}
	look += (key_q-key_e)*looksp;
	var move_y = (key_right-key_left);
	var move_x = -(key_down-key_up);
	if global.mousecapture {
		mx = display_mouse_get_x();
		my = display_mouse_get_y();
		display_mouse_set(683,384);
		dmx = 683 - mx;
		dmy = 384 - my;
		look += round(dmx/3);
	}
	dir = point_direction(0,0,move_x,move_y)+look;
	hsp = lengthdir_x(abs(move_x), dir)*walksp + lengthdir_x(abs(move_y), dir)*walksp;
	vsp = lengthdir_y(abs(move_y), dir)*walksp + lengthdir_y(abs(move_x), dir)*walksp;

	if (place_meeting(x+hsp,y,obj_wall)) {
		while (!place_meeting(x+sign(hsp),y,obj_wall)) {
			x+=sign(hsp);
		}
		hsp = 0;
	}
	if (place_meeting(x,y+vsp,obj_wall)) {
		while (!place_meeting(x,y+sign(vsp),obj_wall)) {
			y+=sign(vsp);
		}
		vsp = 0;
	}

	x+=hsp;
	y+=vsp;
}