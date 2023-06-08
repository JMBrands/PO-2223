// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_toggle(x1,y1,x2,y2,state){
	draw_line_width(x1,y1,x2,y1,3);
	draw_line_width(x1,y1,x1,y2,3);
	draw_line_width(x2,y2,x2,y1,3);
	draw_line_width(x2,y2,x1,y2,3);

	if (state) draw_rectangle(x1+(x2-x1)/6,y1+(y2-y1)/6,x2-(x2-x1)/6,y2-(y2-y1)/6,false);
}