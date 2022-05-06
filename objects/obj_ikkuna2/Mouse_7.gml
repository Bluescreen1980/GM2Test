/// @description Insert description here
// You can write your code in this editor

n = check_player_card(locked_with);


if (lock == global.lockedstate  && n < 1){

		global.message = "Old door which is locked. Maybe there is a way to loosen up bars?"
	
	
}
else if (lock != global.lockedstate || n >= 1)  {
	global.message = "Window is open!"

	if (lock == 1) { lock = 0} else if (lock == 0) { lock = 1};

	room_goto(rm_win);
	}


