/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
mx = display_mouse_get_x();
my = display_mouse_get_y();
draw_set_color(make_color_rgb(240,240,255));
draw_set_font(fnt_menu);
if room == Room2 {
	draw_text(360 - (0.5*string_width("PLAY")),79,"PLAY");
	var mo_play = mouse_hitbox(300,79,420,115);
} else {
	draw_text(360 - (0.5*string_width("CONTINUE")),79,"CONTINUE");
	var mo_play = mouse_hitbox(243,79,480,115);
}
draw_text(360 - (0.5*string_width("OPTIONS")),134,"OPTIONS");
draw_text(360 - (0.5*string_width("CREDITS")),189,"CREDITS");
draw_text(360 - (0.5*string_width("QUIT")),244,"QUIT");
draw_line_width(270,125,450,125,3);
draw_line_width(245,180,475,180,3);
draw_line_width(270,235,450,235,3);
var mo_options = mouse_hitbox(252,134,468,170);
var mo_credits = mouse_hitbox(252,189,468,225);
var mo_quit = mouse_hitbox(300,244,420,280);
if (mo_play) sel = 0; else if (mo_options) sel = 1; else if (mo_credits) sel = 2; else if (mo_quit) sel = 3;
switch sel {
	case start.START:
		if room == Room2 {
			draw_line_width(285,96,295,96,3);
			draw_line_width(435,96,425,96,3);
		} else {
			draw_line_width(220,96,230,96,3);
			draw_line_width(500,96,490,96,3);
		}
		break;
	case start.OPTIONS:
		draw_line_width(237,151,247,151,3);
		draw_line_width(483,151,473,151,3);
		break;
	case start.CREDITS:
		draw_line_width(237,206,247,206,3);
		draw_line_width(483,206,473,206,3);
		break;
	case start.QUIT:
		draw_line_width(285,261,295,261,3);
		draw_line_width(435,261,425,261,3);
		break;
	default:
		break;
}