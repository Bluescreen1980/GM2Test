/// @description Insert description here
// You can write your code in this editor

n = check_player_card(locked_with);


if (lock == global.lockedstate  && n < 1){

		global.message = "Old safe, with busted lock. If you had "+locked_with+" you could open it." 
	
	
}
else if (lock != global.lockedstate || n >= 1)  {
	global.message = "The safe is open!"

	if (lock == 1) { lock = 0} else if (lock == 0) { lock = 1};

		if (full == 1){
			give_random_card();
			global.message = "Old safe is open and you find: "+string(global.recentcard);
			full = 0;
			}
	}


