/// @description Insert description here
// You can write your code in this editor

global.fov = 70;
global.cells_x = 3;
global.cells_y = 3;
global.mousecapture = false;
global.window_x = window_get_x();
global.window_y = window_get_y();

Y = 180
X = 0 
enum start {
	START = 0,
	OPTIONS = 1,
	CREDITS = 2,
	QUIT = 3
}
sel = start.START;