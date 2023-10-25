s.boot;
s.freqscope;
s.scope;


//array di oscillatori, sintesi additiva ONDA A DENTE DI SEGA
(
{
	var parziali = 10;
	x = Array.series(parziali, 1, 1).postln;//serie aritmetica

	a = SinOsc.ar(x*100,0,1/x);
	b = Mix.ar(a);
	Out.ar([0,1],b);

}.play
)

//array di oscillatori, sintesi additiva ONDA QUADRA
(
{
	var parziali = 10;
	x = Array.series(parziali, 1, 2).postln;//serie aritmetica

	a = SinOsc.ar(x*100,0,1/x);
	b = Mix.ar(a);
	Out.ar([0,1],b);

}.play
)

//array di oscillatori, sintesi additiva ONDA TRIANGOLARE
(
{
	var parziali = 105;
	x = Array.series(parziali, 1, 2).postln;//serie aritmetica
	y = pow(x,2).postln;

	a = SinOsc.ar(x*100,0,1/y);
	b = Mix.ar(a);
	Out.ar([0,1],b);

}.play
)




//Alternativa
//array di oscillatori, sintesi additiva - ONDA DENTE DI SEGA
(
{
	var parziali = 10;
	x = Array.fill(parziali, { arg i; i+1});

	a = SinOsc.ar(x*100,0,1/x);
	b = Mix.ar(a);
	Out.ar([0,1],b);

}.play
)



//array di oscillatori, sintesi additiva - ONDA QUADRA
(
{
	var parziali = 10;
	x = Array.fill(parziali, { arg i; 2*i+1});

	a = SinOsc.ar(x*100,0,1/x);
	b = Mix.ar(a);
	Out.ar([0,1],b);

}.play
)




//array di oscillatori, sintesi additiva - ONDA TRIANGOLARE
(
{
	var parziali = 10;
	x = Array.fill(parziali, { arg i; 2*i+1});
	y = pow(x,2).postln;

	a = SinOsc.ar(x*100,0,1/y);
	b = Mix.ar(a);
	Out.ar([0,1],b);

}.play
)

