/// @description Insert description here
// You can write your code in this editor

mx = display_mouse_get_x();
my = display_mouse_get_y();
draw_set_color(make_color_rgb(240,240,255));
draw_set_font(fnt_menu);
draw_text(303,79,"PLAY");
draw_text(255,134,"OPTIONS");
draw_text(255,189,"CREDITS");
draw_text(303,244,"QUIT");
draw_line_width(270,125,450,125,3);
draw_line_width(245,180,475,180,3);
draw_line_width(270,235,450,235,3);
switch sel {
	case start.START:
		draw_line_width(285,96,295,96,3);
		draw_line_width(435,96,425,96,3);
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