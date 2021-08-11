/* 6) Crie dois fatos para definir respectivamente linhas verticais e
horizontais. Você pode definir fatos com nível inferior chamados "linha" e
dentro de linhas outro chamado "ponto" criando assim um termo complexo.
Pergunte: */

% a) se dois pontos com coordenadas (1,1) e (1,3) forma uma reta vertical
ponto(1, 1).
ponto(1, 3).
ponto(2, 1).
ponto(3, 1).

linhaVertical(X1, Y1, X2, Y2) :- ponto(X1, Y1) , ponto(X2, Y2) , X1 =:= X2 , Y1 \= Y2.

% b) se dois pontos com coordenadas (1,1) e (3,2) forma uma reta vertical. Resultado = FALSE

% c) Qual o valor de Y nos pontos (1,1) e (2,Y) para formar uma reta horizontal? Y = 1
retaHorizontal(X1, Y2, X2, Y2) :- ponto(X1, Y1) , ponto(X2, Y2) , X1 \= X2 , Y1 =:= Y2.

% d) Qual o valor de um ponto P que pode formar uma reta horizontal com o ponto (1, 1) ?
% Qualquer ponto que tenha o valor do eixo Y igual a 1 e seu valor de X ser diferente de 1 poderá realizar uma reta horizontal com (1, 1)
% Por exemplo = ponto(3, 1)

% e) Quais os pontos P e G para formarem uma reta horizontal?
/* Quaisquer pontos em que, a coordenada Y de P seja a mesma da de G, e as coordenadas X de P e G sejam diferentes
   Ex: ponto(2, 1) e ponto(3, 1) */