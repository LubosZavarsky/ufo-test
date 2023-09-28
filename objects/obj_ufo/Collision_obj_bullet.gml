lives--;

image_alpha = 0.5;

audio_play_sound(snd_hit, 1, false);

// Add smoke effect
effect_create_layer("Instances", ef_smoke, obj_ufo.x + 15, obj_ufo.y + 25, 2, c_dkgray);

with (other) {
	instance_destroy();
}

alarm[0] = 10;





