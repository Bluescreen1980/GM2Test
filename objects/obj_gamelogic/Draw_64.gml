/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_iso);
timeleft = "Time left: "+string(global.hours)+" hours"
draw_text(x, y, timeleft);

draw_set_font(fnt_pieni);
draw_text(x, y+50, global.message);

if ( global.debugverbose == 1){
draw_text(x, y+80, global.debugtxt);
}
