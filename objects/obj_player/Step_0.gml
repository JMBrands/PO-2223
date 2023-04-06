/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left) || keyboard_check(ord("D"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var move_x = key_left - key_right;
var move_y = key_down - key_up;
x += move_x;
y += move_y;