/// @description Insert description here
// You can write your code in this editor
shader_set(shd_grain);
switch irandom(5) {
	case 0:
		shader_set_uniform_f(seed,20);
		break
	case 1:
		shader_set_uniform_f(seed,-13);
		break
	case 2:
		shader_set_uniform_f(seed,-24);
		break
	case 3:
		shader_set_uniform_f(seed,-35);
		break
	case 4:
		shader_set_uniform_f(seed,29);
		break
	default:
		shader_set_uniform_f(seed,100);
		break
}
shader_set_uniform_f(intensity,0.4);
shader_set_uniform_f(darkness,0.0);
draw_self();
shader_reset();