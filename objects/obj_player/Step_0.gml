/// @description Insert description here
// You can write your code in this editor
/*
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_q = keyboard_check(ord("Q"));
key_e = keyboard_check(ord("E"));

look += (key_q-key_e)*looksp;
var move_y = (key_right-key_left);
var move_x = -(key_down-key_up);

dir = point_direction(0,0,move_x,move_y)+look;
hsp = lengthdir_x(abs(move_x), dir)*walksp + lengthdir_x(abs(move_y), dir)*walksp;
vsp = lengthdir_y(abs(move_y), dir)*walksp + lengthdir_y(abs(move_x), dir)*walksp;

if (!place_free(x+hsp,y)) {
	while (place_free(x+sign(hsp),y)) {
		x+=sign(hsp);
	}
	hsp = 0;
}
if (!place_free(x,y+vsp)) {
	while (place_free(x,y+sign(vsp))) {
		y+=sign(vsp);
	}
	vsp = 0;
}

x+=hsp;
y+=vsp;
*/