	/// @description Insert description here
// You can write your code in this editor

randomize()
visited = false;

walls = [true, true, true, true];

function check_neighbors(cell) {
	neighbors = []
	if (cell.Y-1 >= 0) top = ds_grid_get(obj_maze.cells,cell.X,cell.Y-1); else top = false;
	if (cell.X+1 < obj_maze.cells_x) right = ds_grid_get(obj_maze.cells,cell.X+1,cell.Y); else right = false;
	if (cell.Y+1 < obj_maze.cells_y) bottom = ds_grid_get(obj_maze.cells,cell.X,cell.Y+1); else bottom = false;
	if (cell.X-1 >= 0) left = ds_grid_get(obj_maze.cells,cell.X-1,cell.Y); else left = false;
	
	if (top && !top.visited) {
		array_push(neighbors, top);
	}
	if (right && !right.visited) {
		array_push(neighbors, right);
	}
	if (bottom && !bottom.visited) {
		array_push(neighbors, bottom);
	}
	if (left && !left.visited) {
		array_push(neighbors, left);
	}
	
	if (array_length(neighbors) > 0) {
		r = irandom_range(0,array_length(neighbors)-1);
		return neighbors[r];
	} else return undefined;
}




