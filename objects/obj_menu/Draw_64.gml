/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
mx = display_mouse_get_x();
my = display_mouse_get_y();
draw_set_color(make_color_rgb(240,240,255));
draw_set_font(fnt_menu);
if room == Room2 {
	draw_text(367 - (0.5*string_width("PLAY")),79,"PLAY");
	var mo_play = mouse_hitbox(300,79,420,115);
} else {
	draw_text(367 - (0.5*string_width("CONTINUE")),79,"CONTINUE");
	var mo_play = mouse_hitbox(243,79,480,115);
}
draw_text(367 - (0.5*string_width("OPTIONS")),134,"OPTIONS");
draw_text(367 - (0.5*string_width("CREDITS")),189,"CREDITS");
draw_text(367 - (0.5*string_width("QUIT")),244,"QUIT");
draw_line_width(270,125,450,125,3);
draw_line_width(245,180,475,180,3);
draw_line_width(270,235,450,235,3);
var mo_options = mouse_hitbox(360-(0.5*string_width("OPTIONS")+5),134,360+(0.5*string_width("OPTIONS")+5),170);
var mo_credits = mouse_hitbox(360-(0.5*string_width("CREDITS")+5),189,360+(0.5*string_width("CREDITS")+5),225);
var mo_quit = mouse_hitbox(360-(0.5*string_width("QUIT")+5),244,360+(0.5*string_width("QUIT")+5),280);
if (mo_play) sel = 0; else if (mo_options) sel = 1; else if (mo_credits) sel = 2; else if (mo_quit) sel = 3;
switch sel {
	case start.START:
		if room == Room2 {
			draw_line_width(360 - (0.5*string_width("PLAY")+10),96,360 - (0.5*string_width("PLAY")+20),96,3);
			draw_line_width(360 + (0.5*string_width("PLAY")+10),96,360 + (0.5*string_width("PLAY")+20),96,3);
		} else {
			draw_line_width(360 - (0.5*string_width("CONTINUE")+10),96,360 - (0.5*string_width("CONTINUE")+20),96,3);
			draw_line_width(360 + (0.5*string_width("CONTINUE")+10),96,360 + (0.5*string_width("CONTINUE")+20),96,3);
		}
		break;
	case start.OPTIONS:
		draw_line_width(360 - (0.5*string_width("OPTIONS")+10),151,360 - (0.5*string_width("OPTIONS")+20),151,3);
		draw_line_width(360 + (0.5*string_width("OPTIONS")+10),151,360 + (0.5*string_width("OPTIONS")+20),151,3);
		break;
	case start.CREDITS:
		draw_line_width(360 - (0.5*string_width("CREDITS")+10),206,360 - (0.5*string_width("CREDITS")+20),206,3);
		draw_line_width(360 + (0.5*string_width("CREDITS")+10),206,360 + (0.5*string_width("CREDITS")+20),206,3);
		break;
	case start.QUIT:
		draw_line_width(360 - (0.5*string_width("QUIT")+10),261,360 - (0.5*string_width("QUIT")+20),261,3);
		draw_line_width(360 + (0.5*string_width("QUIT")+10),261,360 + (0.5*string_width("QUIT")+20),261,3);
		break;
	default:
		break;
}