/// @description Insert description here
// You can write your code in this editor
image_index = 0
y += altura


// p1 sorte: 3 pontos: 1 rapidez: 2
// p3 sorte: 2 pontos: 3 rapidez: 1


// p2 sorte: 1 pontos: 2 rapidez: 3

global.sorte = -2
global.pontos = 7
global.rapidez = 16

global.player = 2

global.fire_rate = 40

var transicao = instance_create_layer(0,0,"player",obj_transicao);
//audio_stop_all();
transicao.destino = destino