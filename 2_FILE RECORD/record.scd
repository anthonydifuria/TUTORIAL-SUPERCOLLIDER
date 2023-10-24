s.boot// accende il server

s.freqscope;// spettro
s.scope;// onda


(
{

	arg freq = 400,
	phase = 0,
	amp = 1;
	var sine,
	pan, posizione;

	sine = SinOsc.ar(freq,phase,amp);

	posizione = SinOsc.ar(1);
	pan = Pan2.ar(sine,posizione,1);
	Out.ar(0, pan);// canale 0 e 1

}.play;
thisProcess.platform.recordingsDir = "/Users/NOME/Desktop";//scegli il percorso per mac - per windows verificare
r = Recorder.new(s);// instanzi il registratore
r.recHeaderFormat = "wav";//wave
r.recSampleFormat = "int24";//decidi il formato a 24 bit
r.record;//registra
)


thisProcess.platform.recordingsDir






















