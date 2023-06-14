// @description Insert description here
// You can write your code in this editor
global.gain += (keyboard_check(ord("O"))-keyboard_check(ord("P")))/60
if (global.gain != gainold) {
	audio_sound_gain(sound_main,global.gain*!global.mute,0);
	gainold = global.gain;
}
if (keyboard_check_pressed(vk_f11)) window_set_fullscreen(!window_get_fullscreen());