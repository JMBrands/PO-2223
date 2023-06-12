/// @description Insert description here
// You can write your code in this editor

var i = 0;
//	shader_set(shd_noise);
//	shader_set_uniform_f(shader_get_uniform(shd_noise,"seed"),random_range(0,255));
draw_set_alpha((1+(2*raycasting))/3);
shader_reset();
var rel_a = -(0.5*global.fov);
for (var angle = look-(0.5*global.fov);angle < look+(0.5*global.fov); angle+=(global.fov/cam_width)*4) {
	if (correcting) var correction = abs(dcos(rel_a)); else var correction = 1;
	instance_create_layer(x,y,"player",obj_ray,{dir:angle});
	length = distance_to_point(rayx,rayy)*correction;
	
	if (next) {
		draw_set_color(make_color_hsv(85,255,255/(length/(0.5*cam_height))));
		var len = length-(cam_height-length);
		var ys = length;
		var ye = length-len;
		if (ye > ys) draw_line(cam_width-i,ys,cam_width-i,ye);
	}
	else { 
		var X = int64((rayx+rayy)%32/2);
		for (var Y = 0; Y < 16; Y++) {
			var hsv = ds_grid_get(global.tx1,X,Y);
			var h = hsv[0];
			var s = hsv[1];
			var v = hsv[2];
			draw_set_color(make_color_hsv(h,s,v*((0.5/(length/(0.5*cam_height))))));
			var len = length-(cam_height-length);
			var ys = length-(len/16*Y);
			var ye = length-(len/16*(Y+1));
			if (ye > ys) draw_line_width(cam_width-i,ys,cam_width-i,ye,2);
		}
	}
	i+=4;
	rel_a = (global.fov/720)*i-(0.5*global.fov)
}
shader_reset();

