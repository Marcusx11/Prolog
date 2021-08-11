/* 7) Você conhece as bonecas russas de madeira? Onde uma boneca menor está
contida em uma maior? 

Crie uma base de conhecimento para representar qual boneca cabe diretamente
dentro de outra. Depois defina regras recursivas para dizer se uma boneca está
diretamente ou indiretamente dentro de outras. */

% Base de conhecimento das bonecas
dentroDiretamente(olga, katarina).
dentroDiretamente(natasha, olga).
dentroDiretamente(irina, natasha).

% Verificando se uma boneca está indiretamente ou diretamente dentro de outra
estaDentro(X, Y) :- dentroDiretamente(X, Y) , !.
estaDentro(X, Y) :- dentroDiretamente(X, Y1) , estaDentro(Y1, Y).