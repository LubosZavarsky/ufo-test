switch(room){
	case rm_game:
		draw_text(20,20,"SCORE: "+string(score));
		//draw_text(20,40,"LIVES: "+string(lives));
		
		for (i = 0; i < lives; i++) {
			draw_sprite(spr_heart, 0, 30 + 24*i, 55)
		}
		
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, 250, "UFO", 4.5, 4.5, 0, c,c,c,c,1 );
		draw_text_transformed(room_width/2, 350, 
@"Beam the bad guys, get 100 points!

LEFT/RIGHT: move
SPACE: SHOOT

>> PRESS ENTER TO START <<", 1.5, 1.5, image_angle);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(room_width/2, 250, "YOU WON, BITCH!", 5, 5, 0, c,c,c,c,1 );		
		draw_text_transformed(room_width/2, 450,">> PRESS ENTER TO RESTART <<", 2, 2, image_angle);
		draw_set_halign(fa_left);		
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;		
		draw_text_transformed_color(room_width/2, 250, "GAME OVER, BITCH!", 5, 5, 0, c,c,c,c,1 );
		draw_set_valign(fa_middle);
		draw_text_transformed(room_width/2, 350,"FINAL SCORE: "+string(score), 2, 2, image_angle);		
		draw_text_transformed(room_width/2, 450,">> PRESS ENTER TO RESTART <<", 2, 2, image_angle);
		draw_set_halign(fa_left);
		break;

}





