s.boot// accende il server

s.freqscope;// spettro
s.scope;// onda


//prima modalitá Modulazione di Ampiezza
(
a = {

	//argomenti SinOsc = freq,phase,amp
	arg freqCar = 2000,freqMod = 500,
	phase = 0,
	amp = 1,
	car, mod, rm, am,
	pan, posizione, panRate = 0;

	mod = SinOsc.ar(freqMod,phase,amp);
	car = SinOsc.ar(freqCar,phase,amp);

	rm = car * mod;
	am = car + rm;

	posizione = SinOsc.ar(panRate);
	pan = Pan2.ar(am,posizione,1);

	Out.ar(0, pan);// canale 0 e 1

}.play
)


a.set(\freqCar, 600);
a.set(\panRate, 5);





//seconda modalitá Modulazione di Ampiezza
(
b = {

	//argomenti SinOsc = freq,phase,amp
	arg freqCar = 2000,freqMod = 500,
	phase = 0,
	amp = 1,
	car, mod, unipolare, rm, am,
	pan, posizione, panRate = 0;

	mod = SinOsc.ar(freqMod,phase,amp);
	unipolare = mod/2 + 1;
	car = SinOsc.ar(freqCar,phase,unipolare);

	am = car;

	posizione = SinOsc.ar(panRate);
	pan = Pan2.ar(am,posizione,1);

	Out.ar(0, pan);// canale 0 e 1

}.play
)


b.set(\freqCar, 600);
b.set(\panRate, 5);



















