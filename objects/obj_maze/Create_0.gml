/// @description Insert description here
// You can write your code in this editor
cells = ds_grid_create(cells_x, cells_y);
for (var X = 0; X <= cells_x; X++) {
	for (var Y = 0; Y <= cells_y; Y++) {
		instance_create_layer(X*80,Y*80,"walls",obj_wall);
		if (X != cells_x) {
			with (instance_create_layer(X*80+40,Y*80,"walls",obj_wall)) {
				image_xscale = 4;
			}
		}
		if (Y != cells_y) {
			with (instance_create_layer(X*80,Y*80+40,"walls",obj_wall)) {
				image_yscale = 4;
			}		
		}
		ds_grid_add(cells,X,Y,instance_create_layer(X*80+40,Y*80+40,"walls",obj_cell)
	}
}
