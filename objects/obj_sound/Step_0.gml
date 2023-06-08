/// @description Insert description here
// You can write your code in this editor
global.gain += (keyboard_check(ord("O"))-keyboard_check(ord("P")))/60
if (global.gain != gainold) {
//	audio_sound_gain(sound_main,global.gain,0);
	gainold = global.gain;
}