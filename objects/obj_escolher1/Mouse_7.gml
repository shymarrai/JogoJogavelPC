/// @description Insert description here
// You can write your code in this editor
image_index = 0
y += altura

// p2 sorte: 1 pontos: 2 rapidez: 3

// p3 sorte: 2 pontos: 3 rapidez: 1


// p1 sorte: 3 pontos: 1 rapidez: 2
global.sorte = 3
global.pontos = 5
global.rapidez = 12
global.fire_rate = 30

global.player = 1
var transicao = instance_create_layer(0,0,"player",obj_transicao);
//audio_stop_all();
transicao.destino = destino