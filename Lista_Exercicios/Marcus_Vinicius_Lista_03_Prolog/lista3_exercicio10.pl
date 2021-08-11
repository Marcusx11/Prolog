/* 10) Com a mesma idéia de mapa 4x4 da questão anterior, crie os predicados:
 pos_acima
 pos_abaixo
 pos_direita
 pos_esquerda
Cada predicado deve ter 4 parâmetros, sendo os 2 primeiros as coordenadas (x; y)
da posição inicial, e os 2 últimos parâmetros sendo as coordenadas (x; y) da
posição acima, abaixo, à direita ou à esquerda da posição inicial, se existir.
Se não existir a posição indicada, as 2 ultimas coordenadas devem ser iguais às
coordenadas iniciais.
Por exemplo, para a posição (1; 1):
?- pos_abaixo(1, 1, X, Y).
X = 1, Y = 1.
?- pos_acima(1, 1, X, Y).
X = 1, Y = 2. */

existe_acima(_, Y) :- Y + 1 =< 4.
existe_abaixo(_, Y) :- Y - 1 > 0.
existe_direita(X, _) :- X + 1 =< 4.
existe_esquerda(X, _) :- X - 1 > 0.

pos_acima(X1, Y1, X2, Y2) :- (existe_acima(X1, Y1) , X2 = X1 , Y2 is Y1 + 1) ; (\+ existe_acima(X1, Y1) , X2 = X1 , Y2 = Y1).
pos_abaixo(X1, Y1, X2, Y2) :- (existe_abaixo(X1, Y1) , X2 = X1 , Y2 is Y1 - 1) ; (\+ existe_abaixo(X1, Y1) , X2 = X1 , Y2 = Y1).
pos_direita(X1, Y1, X2, Y2) :- (existe_direita(X1, Y1) , X2 is X1 + 1 , Y2 = Y1) ; (\+ existe_direita(X1, Y1) , X2 = X1, Y2 = Y1).
pos_esquerda(X1, Y1, X2, Y2) :- (existe_esquerda(X1, Y1) , X2 is X1 - 1 , Y2 = Y1) ; (\+ existe_esquerda(X1, Y1) , X2 = X1, Y2 = Y1).