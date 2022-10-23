if (keyboard_check_pressed(vk_enter)) {
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:			
		case rm_gameover:
			RESTART_ALL;
			break;
	}
}


if (room == rm_game){
	if (score >= 100) {
		audio_play_sound(snd_win, 1, false);
		room_goto(rm_win);
	}
	
	if (score < 0) {
		audio_play_sound(snd_fail, 1, false);
		room_goto(rm_gameover);	
	
	}

	if (lives <= 0) {
		audio_play_sound(snd_fail, 1, false);
		room_goto(rm_gameover);	
		
	}
}




