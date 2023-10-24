s.boot// accende il server

s.freqscope;// spettro
s.scope;// onda


//metodo play
(
{
	SinOsc.ar(400);

}.play
)


//metodo ar e argomenti SinOsc
(
{
	//metodo .ar = audio rate
	//argomenti SinOsc = freq,phase,amp
	var freq = 400,
	phase = 0,
	amp = 1;
	SinOsc.ar(freq,phase,amp);

}.play
)


//UGEN Out in audio rate
(
{
	//metodo .ar = audio rate
	//argomenti SinOsc = freq,phase,amp
	var freq = 400,
	phase = 0,
	amp = 1,
	sine;

	sine = SinOsc.ar(freq,phase,amp);

	Out.ar([0,1], sine);// canale 0 e 1

}.play
)


//UGEN Pan in audio rate
(
{
	//metodo .ar = audio rate
	//argomenti SinOsc = freq,phase,amp
	var freq = 400,
	phase = 0,
	amp = 1,
	sine,
	pan, posizione;

	sine = SinOsc.ar(freq,phase,amp);

	posizione = SinOsc.ar(1);
	pan = Pan2.ar(sine,posizione,1);
	Out.ar(0, pan);// canale 0 e 1

}.play
)

























