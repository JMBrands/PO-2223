// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_hitbox(x1,y1,x2,y2) {
	return ((((mouse_x/1366*720 > x1)&&(mouse_x/1366*720 < x2))||((mouse_x/1366*720 < x1)&&(mouse_x/1366*720 > x2)))&&(((mouse_y/768*360 > y1)&&(mouse_y/768*360 < y2))||((mouse_y/768*360 < y1)&&(mouse_y/768*360 > y2))));
}