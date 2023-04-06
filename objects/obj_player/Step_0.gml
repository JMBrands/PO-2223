/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_q = keyboard_check(ord("Q"));
key_e = keyboard_check(ord("E"));

look = (key_q-key_e)*looksp;
hsp =lengthdir_x((key_right-key_left)*walksp, look);
vsp =lengthdir_y((key_down-key_up)*walksp, look);
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
dir = point_direction(0,0,hsp,vsp);
if(tsp > walksp*walksp){
    hsp = lengthdir_x(walksp, dir);
    vsp = lengthdir_y(walksp, dir);
}
x+=hsp;
y+=vsp;
