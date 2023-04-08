/// @description Insert description here
// You can write your code in this editor
cells = ds_grid_create(cells_x, cells_y);
X = 0;
Y = 0;
instance_create_layer((cells_x-1)*80+40, (cells_x-1)*80+40, "walls", obj_next);
for (X = 0; X <= cells_x; X++) {
	for (Y = 0; Y <= cells_y; Y++) {
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
	}
}
for (X = 0; X < cells_x; X++) {
	for (Y = 0; Y < cells_y; Y++) {
		with (instance_create_layer(X*80+40,Y*80+40,"player",obj_cell)) {
			ds_grid_add(other.cells,other.X,other.Y,id);
			X = other.X;
			Y = other.Y;
		}
	}
}

function remove_walls(a, b) {
	x1 = a.X-b.X;
	y1 = a.Y-b.Y;
	if (x1 == 1) {
		a.walls[3] = false;
		b.walls[1] = false;
	} else if (x1 == -1) {
		a.walls[1] = false;
		b.walls[3] = false;
	}
	if (y1 == 1) {
		a.walls[0] = false;
		b.walls[2] = false;
	} else if (y1 == -1) {
		a.walls[2] = false;
		b.walls[0] = false;
	}
	walls = ds_list_create();
	collision_line_list(a.x,a.y,b.x,b.y,obj_wall,false,true,walls,true);
	wall = ds_list_find_value(walls,0);
	if (wall != undefined) instance_destroy(wall);
	ds_list_destroy(walls);
}

stack = [];
current = ds_grid_get(cells, 0,0);
i = 0
do {
	current.visited = true;
	next = obj_cell.check_neighbors(current);
	
	if (next) {
		next.visited = true;
		
		array_push(stack, current);
		
		remove_walls(current, next);
		
		current = next;
	} else if (array_length(stack) > 0) {
		current = array_pop(stack);
	}
	i++;
} until array_length(stack) == 0 && i > 10;
