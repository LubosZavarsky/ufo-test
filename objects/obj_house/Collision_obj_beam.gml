sprite_index = spr_explo;

screenshake(5, 3, 0.5);

if (!audio_is_playing(snd_explo)){
	audio_play_sound(snd_explo, 1, false);
}



instance_destroy(obj_spawner);







