// Horizontal movement
x = x + move_randomly;

// + gravity
//vsp = vsp + grv;

// Vertical movement + collision w. ground
if (place_meeting(x, y+vsp, obj_ground)) {
	vsp = 0;
}

y = y + vsp;


// On collision w. beam >> move stright towards ufo (needs to be in step event)
if (move_randomly == 0) {
	audio_play_sound(snd_abd, 1, false);
	x = obj_ufo.x	

}



