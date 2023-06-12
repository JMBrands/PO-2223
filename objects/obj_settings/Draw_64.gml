/// @description Insert description here
// You can write your code in this editor
draw_set_color(make_color_rgb(240,240,255));
draw_set_alpha(1);
draw_text(360 - (string_width("MUSIC")),79,"MUSIC");
draw_text(360 - (string_width("VOLUME")),134,"VOLUME");
draw_text(360 - (string_width("FOV")),189,"FOV");
draw_text(360 - (string_width("MOUSESENS")),244,"MOUSESENS");

draw_text(480,134,string("{0}%",global.gain*100));
draw_text(480,189,string(global.fov));
var length = string_width(string(global.fov));
draw_set_font(fnt_small);
draw_text(475+length,189,"o");
draw_set_font(fnt_menu);
draw_text(480,244,string("{0}%",global.msens*100));

draw_line_width(270,125,450,125,3);
draw_line_width(245,180,475,180,3);
draw_line_width(200,235,520,235,3);

draw_toggle(360,79,396,115,!global.mute);

draw_slider(360,134,460,170,global.gain*100);
draw_slider(360,189,460,225,global.fov/360*100);
draw_slider(360,244,460,280,global.msens/2*100);

switch (sel) {
	case options.FOVSLD:
		draw_line_width(350 - (string_width("FOV")),207,340 - (string_width("FOV")),207,3)
		break;
	case options.MSENS:
		draw_line_width(350 - (string_width("MOUSESENS")),262,340 - (string_width("MOUSESENS")),262,3);
		break;
	case options.VOLSLD:
		draw_line_width(350 - (string_width("VOLUME")),152,340 - (string_width("VOLUME")),152,3);
		break;
	case options.VOLTOG:
		draw_line_width(350 - (string_width("MUSIC")),97,340 - (string_width("MUSIC")),97,3);
		break;
	default:
		break;
}