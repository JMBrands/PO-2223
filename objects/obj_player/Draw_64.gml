/// @description Insert description here
// You can write your code in this editor

var i = 0;
draw_set_alpha(1);
for (var angle = look-(0.5*global.fov);angle < look+(0.5*global.fov); angle+=(global.fov/cam_width)) {
	if (correcting) var correction = dcos(angle); else var correction = 1;
	instance_create_layer(x,y,"player",obj_ray,{dir:angle});
	length = distance_to_point(rayx,rayy)*correction;
	
	if (next) var hue = 85; else var hue = 0;
	
	draw_set_color(make_color_hsv(hue,255,clamp(255-(length/(0.5*cam_height)*255),0,255)));
	draw_line(cam_width-i,length,cam_width-i,cam_height-length);
	
	i++;
}
