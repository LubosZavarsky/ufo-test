lives--;

image_alpha = 0.5;

audio_play_sound(snd_hit, 1, false);

with (other) {
	instance_destroy();
}

alarm[0] = 10;





