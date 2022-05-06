/// @description Insert description here
// You can write your code in this editor

if (full == 1){
		give_random_card();
		global.message = "You find: "+string(global.recentcard)+ " from the floor!";
		full = 0;
		image_alpha = 0;
		}
