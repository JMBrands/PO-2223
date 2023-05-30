// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_hitbox(x1,y1,x2,y2) {
	var mx = mouse_x/1366*720;
	var my = mouse_y/768*360;
	return ((((mx > x1)&&(mx < x2))||((mx < x1)&&(mx > x2)))&&(((my > y1)&&(my < y2))||((my < y1)&&(my > y2))))
}