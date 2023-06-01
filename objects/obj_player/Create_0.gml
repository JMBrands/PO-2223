/// @description Insert description here
// You can write your code in this editor
dir = 0;
look = 0;
correcting = true;
cam_width = window_get_width();
cam_height= window_get_height();
ray = 0;
length = 0;
rayx = 0;
rayy = 0;
next = false
spd = 1;
global.mousecapture = true;
raycasting = true;
if (global.mousecapture) window_set_cursor(cr_none); else window_set_cursor(cr_default);