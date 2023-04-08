/// @description Insert description here
// You can write your code in this editor
/*
var i = 0;
for (var angle = look-(0.5*fov);angle <= look+(0.5*fov); angle+=(fov/cam_width)) {
	
	draw_set_color(c_lime);
	var colls = ds_list_create();
	collision_line_list(x,y,x+lengthdir_x(255, angle),y+lengthdir_y(255,angle),all,false,true,colls,true);
	
	if ds_list_size(colls) {
		var length = distance_to_object(ds_list_find_value(colls, 0));
	} else length = 255;
//	draw_line(x/room_width*cam_width,y/room_height*cam_height,(x+lengthdir_x(length, angle))/room_width*cam_width,(y+lengthdir_y(length,angle))/room_height*cam_height);
	
	draw_set_color(make_color_hsv(0,255,clamp(255-length,0,255)));
	draw_line(cam_width-i,0,cam_width-i,cam_height-(length/255*120));
	
	ds_list_destroy(colls);
	i++;
}

*/



