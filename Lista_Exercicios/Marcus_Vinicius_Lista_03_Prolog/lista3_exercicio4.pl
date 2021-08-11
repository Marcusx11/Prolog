/* 4) Faça um código em PROLOG que dado um mapa com quatro regiões sendo que
somente 3 delas são adjacentes. O programa deve escolher, entre três
opções, a cor para cada região de forma que duas regiões fronteiriças não
tenham a mesma cor. */

cor(azul).
cor(amarelo).
cor(vermelho).

adjacente(a, b).
adjacente(a, c).
adjacente(b, a).
adjacente(b, c).
adjacente(b, d).
adjacente(d, b).
adjacente(d, c).

colorir(Cor1, Cor2, Cor3) :- cor(Cor1).
% Não consegui