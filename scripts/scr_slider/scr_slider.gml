// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_slider(x1,y1,x2,y2,amount){
	draw_line_width(x1,y1+(abs(y1-y2)/2),x2,y1+(abs(y1-y2)/2),3);
	draw_line_width(x1+(abs(x1-x2)/100*amount),y1,x1+(abs(x1-x2)/100*amount),y2,5);
}