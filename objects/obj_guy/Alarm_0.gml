if (obj_guy.sprite_index == spr_guy_bad) {
	var bullet = instance_create_layer(obj_guy.x, obj_guy.y, "Instances", obj_bullet); 

	with (bullet) {
		direction = point_direction(x, y, obj_ufo.x, obj_ufo.y); 
		speed = 6;
	}
	
}



	








