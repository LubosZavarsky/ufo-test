#macro RESTART_ALL __game_restart()

function __game_restart() {
  // This will destroy all instances. 
  // This will run their cleanup events as well as their destroy event.
  with(all) {
	instance_destroy();	
  }

  audio_stop_all();
  //raw_texture_flush(); ???
  


  // Go to the very first room, as per room order
  room_goto(rm_start);
}