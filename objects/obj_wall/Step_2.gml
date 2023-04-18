/// @description Insert description here
// You can write your code in this editor


if (first) {
	first = false;
	for (var i = 0; i < image_xscale*16;i+=4) {
		with (instance_create_layer(x+(i-(image_xscale*8)),y-(image_yscale*8),"player",obj_collision)) {
			owner = other;
		}
		with (instance_create_layer(x+(i-(image_xscale*8)),y+(image_yscale*8),"player",obj_collision)) {
			owner = other;
		}
	}
	for (var i = 0; i < image_yscale*16;i+=4) {
		with (instance_create_layer(x-(image_xscale*8),y+(i-(image_yscale*8)),"player",obj_collision)) {
			owner = other;
		}
		with (instance_create_layer(x+(image_xscale*8),y+(i-(image_yscale*8)),"player",obj_collision)) {
			owner = other;
		}
	}
}






