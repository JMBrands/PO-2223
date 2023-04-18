/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < 4; i++) {
	for (var j = 0; j < 4; j++) {
		with (instance_create_layer(x-8+(i*4),y-8+(j*4),"player",obj_collision_next)) {
			owner = other;
		}
	}
}

