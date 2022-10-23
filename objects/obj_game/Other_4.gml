// Stop loops from previous rooms - stops ALL sounds before going to final room... 
//audio_stop_all();

switch (room) {
	case rm_start:
		audio_stop_all();
		audio_play_sound(snd_start, 2, true);	
		break;
	
	case rm_game:
		audio_stop_sound(snd_start);
		audio_play_sound(snd_game, 2, true);
		break;
	
	case rm_win:
		audio_stop_sound(snd_game);
		audio_play_sound(snd_finish, 1, true);
		break;
	
	case rm_gameover:
		audio_stop_sound(snd_game);
		audio_play_sound(snd_over, 1, true);	
		break;
}






