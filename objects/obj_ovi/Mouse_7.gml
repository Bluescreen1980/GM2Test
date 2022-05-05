/// @description Insert description here
// You can write your code in this editor


if (lock == global.lockedstate){

global.message = "Old door which is locked. Maybe there is a key somewhere?"
}
else {
global.message = "Old door is open!"
room_goto(rm_win)
}
