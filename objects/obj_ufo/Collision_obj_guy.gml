// Tilt on suck
image_angle = choose(-10, 10);
alarm[1] = 10;

with (other) {

	if (sprite_index == spr_guy_bad) {		
		score += 10;
		instance_destroy();
		
	} else if (sprite_index == spr_guy_good) {			
		score -= 10;
		instance_destroy();
	}

}





