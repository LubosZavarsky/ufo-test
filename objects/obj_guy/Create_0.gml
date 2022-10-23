// Assign random sprite
sprite_index = choose(spr_guy_good, spr_guy_bad);

// Speedz
hsp = 4;
vsp = 4;
//grv = 0.5;

move_randomly = choose(+hsp, -hsp);

// Flip sprite when running opposite dir.
if (move_randomly < 0) image_xscale = -1;

// Bad guys shooting
alarm[0] = irandom_range(10,20);






	






