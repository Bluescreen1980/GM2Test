// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start(){
 global.debugtxt = "Debug log";
 global.debugverbose = 1;
 card_removal_pile = array_create (0); 
 global.recentcard = "xxx";
 
 init_cards();
 
 //prototyyppi 1 linjoja
 global.winorlose = 0; // 1 voitto 2 häviö
 global.night = 0;
 global.hours = 12;
 global.message = "You wake up in a room, head empty.";
 
 global.doorlocked = 1;
 global.windowlocked = 1;
 global.lockedstate = 1;
 
 randomise();
 c = howmany_card();
 global.r1 = (irandom_range(0,c-1));
 // global.debugtxt = global.r1;
 //global.debugtxt = c;
 global.r2 = global.r1;
  
}