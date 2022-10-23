// Movement
if (keyboard_check(vk_right)) x += 8;
if (keyboard_check(vk_left)) x -= 8;
//if (keyboard_check(vk_up)) y -= 8;
//if (keyboard_check(vk_down)) y += 8;

// Keep ufo in the room
x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2); 
//y= clamp(y,0,room_height);


// Shooting
if (keyboard_check_pressed(vk_space)) {
					
	if (!instance_exists(obj_beam)) {
		audio_play_sound(snd_beam, 1, false);
		instance_create_layer(x,y,"beam_layer", obj_beam);	
	}

};





