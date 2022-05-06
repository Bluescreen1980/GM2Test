/// @description Insert description here
// You can write your code in this editor

n = check_player_card(locked_with);


if (lock == global.lockedstate  && n < 1){

		global.message = "Old chest which is locked. Maybe there is a way to pick its lock?"
	
	
}
else if (lock != global.lockedstate || n >= 1)  {

	if (lock == 1) { lock = 0} else if (lock == 0) { lock = 1};

		if (full == 1){
		give_random_card();
		global.message = "Old chest is open, you find: "+string(global.recentcard);
		full = 0;
		}
}


