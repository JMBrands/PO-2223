/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var move_x = key_right - key_left;
var move_y = key_down - key_up;
hsp = move_x * walksp;
vsp = move_y * walksp;
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
var tsp = hsp * hsp + vsp * vsp;
if(tsp > walksp*walksp){
    var dir = point_direction(0,0,hsp,vsp);
    hsp = lengthdir_x(walksp, dir);
    vsp = lengthdir_y(walksp, dir);
}
x+=hsp;
y+=vsp;