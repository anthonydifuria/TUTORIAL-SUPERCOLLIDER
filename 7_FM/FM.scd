s.boot// accende il server

s.freqscope;// spettro
s.scope;// onda


//Modulazione di frequenza
//freqMod allontana le parziali
//freqDev densitá di parziali
(
a = {

	//argomenti SinOsc = freq,phase,amp
	arg freqCar = 2000,freqMod = 200, freqDev = 100,
	phase = 0,
	amp = 1,
	car, modDev, fm,
	pan, posizione, panRate = 0;

	modDev = SinOsc.ar(freqMod, phase, freqDev);

	car = SinOsc.ar(freqCar + modDev, phase, amp);

	fm = car;

	posizione = SinOsc.ar(panRate);
	pan = Pan2.ar(fm,posizione,1);

	Out.ar(0, pan);// canale 0 e 1

}.play
)



a.set(\freqCar, 600);
a.set(\panRate, 5);





//Modualzione di frequenza con indice di modulazione
//fmIndex = 0 assenza di parziali - fmIndex > 0 densitá di parziali
(
b = {

	//argomenti SinOsc = freq,phase,amp
	arg freqCar = 2000,freqMod = 100, fmIndex = 1,
	phase = 0,
	amp = 1,
	panRate = 0;

	var car, freqDev, modDev, fm,
	pan, posizione;

	freqDev = freqMod * fmIndex;

	modDev = SinOsc.ar(freqMod, phase, freqDev);

	car = SinOsc.ar(freqCar + modDev, phase, amp);

	fm = car;

	posizione = SinOsc.ar(panRate);
	pan = Pan2.ar(fm,posizione,1);

	Out.ar(0, pan);// canale 0 e 1

}.play
)


b.set(\freqCar, 600);
b.set(\panRate, 5);



















