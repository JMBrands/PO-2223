/// @description Insert description here
// You can write your code in this editor

var i = 0;
draw_set_alpha(1);
for (var angle = look-(0.5*global.fov);angle < look+(0.5*global.fov); angle+=(global.fov/cam_width)) {
	if (correcting) var correction = dcos(angle); else var correction = 1;
	draw_set_color(c_lime);
	var colls = ds_list_create();
	collision_line_list(x,y,x+lengthdir_x(0.5*cam_height, angle),y+lengthdir_y(0.5*cam_height,angle),obj_collision,false,true,colls,true);
	if ds_list_size(colls) {
		var closest = ds_list_find_value(colls, 0);
		var length = distance_to_object(closest)*correction;
	} else {
		length = 0.5*cam_height;
		closest = self;
	}
//	draw_line(x/room_width*cam_width,y/room_height*cam_height,closest.x/room_width*cam_width,closest.y/room_height*cam_height);
	
	var next = collision_line(x,y,x+lengthdir_x(0.5*cam_height, angle),y+lengthdir_y(0.5*cam_height,angle),obj_collision_next,false,true);
	if next {
		var length_next = distance_to_object(next)*correction;
		if (length_next < length) {
			draw_set_color(make_color_hsv(85,255,clamp(255-length_next,0,255)));
			draw_line(cam_width-i,length_next,cam_width-i,cam_height-length_next);
		}
	} else length_next = cam_height;
	
	if (length_next > length) {
		draw_set_color(make_color_hsv(0,255,clamp(255-(length/(0.5*cam_height)*255),0,255)));
		draw_line(cam_width-i,length,cam_width-i,cam_height-length);
	}
	ds_list_destroy(colls);
	
	i++;
}
