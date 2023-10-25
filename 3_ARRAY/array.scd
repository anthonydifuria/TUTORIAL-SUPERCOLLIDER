//ARRAY

Array.with(7, 'eight',  9).postln;

Array.geom(10, 1, 5).postln;//serie geometrica
Array.series(10, 1, 1).postln;//serie aritmetica

Array.interpolation(5, 1, 2);//interpola tra 1 e 2 in 5 passi
Array.rand(8, 1, 100);//pesca 8 valori tra 1 e 100

a = Array.fill(10, { arg i; i * 2 });
a.postln;

a.at(1); //valore dell' indice 1 dell' array
a.put(1,10); //cambio il valore dell'indice 1
a.put(1,2); //ripristino il valore dell'indice 1

a.do({ arg item, i; [i, item].postln; });//legge gli elementi e l' indice