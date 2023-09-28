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

// start music HTML
if (os_browser && keyboard_check_pressed(ord("M")) && !audio_is_playing(snd_start)){
			show_debug_message("kok")
			audio_play_sound(snd_start, 2, true);
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




