/// @description Insert description here
// You can write your code in this editor

var i = 0;
draw_set_alpha(1);
for (var angle = look-(0.5*global.fov);angle < look+(0.5*global.fov); angle+=(global.fov/cam_width)) {
	if (correcting) var correction = dcos(angle); else var correction = 1;
	instance_create_layer(x,y,"player",obj_ray,{dir:angle});
	length = distance_to_point(rayx,rayy)*correction;
	
	if (next) var X = 0; else var X = (rayx+rayy)%16;
	for (var Y = 0; Y < 16; Y++) {
		var hsv = ds_grid_get(global.tx1,X,Y);
		var h = hsv[0];
		var s = hsv[1];
		var v = hsv[2];
		draw_set_color(make_color_hsv(h,s,v*((1/(length/(0.5*cam_height))))));
		var len = length-(cam_height-length);
		var ys = length-(len/16*Y);
		var ye = length-(len/16*(Y+1));
		if (ye > ys) draw_line(cam_width-i,ys,cam_width-i,ye);
	}
	i++;
}
