/// @description Insert description here
// You can write your code in this editor
dist = 0;
while (place_free(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir)) && dist < 500) {
	x += lengthdir_x(spd,dir);
	y += lengthdir_y(spd,dir);
	
	dist+=spd;
}
if (place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_next)) obj_player.next = true; else obj_player.next = false;
obj_player.ray = dist;
obj_player.rayx = x;
obj_player.rayy = y;
instance_destroy();