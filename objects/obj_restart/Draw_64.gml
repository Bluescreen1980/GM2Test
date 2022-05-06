/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_iso);

if (global.winorlose = 1){
global.message = "You won the game"
} else if (global.winorlose == 2){
global.message = "You won the game"
}

//ww= room_width/2
ww = 920
//wh= room_height/2
wh = 540
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(ww,wh, global.message);

