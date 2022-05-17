/// @description Insert description here
// You can write your code in this editor

global.checked_full = window_get_fullscreen();

full_screen = function(){
global.checked_full = !global.checked_full

window_set_fullscreen(global.checked_full);

}


