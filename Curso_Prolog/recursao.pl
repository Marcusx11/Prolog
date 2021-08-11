% Exempçlo da família
mulher(pam).

mulher(liz).

mulher(ann).

mulher(pat).

% Estou dizendo que os átomos abaixo "são homens"
homem(tom).

homem(bob).

homem(jim).

% Representação do grau de parentesco da árvore genealógica
% Família pai Tom, mãe Pam e filho Bob
genitor(pam, bob).
genitor(tom, bob).

% Família pai Tom, filha Liz
genitor(tom, liz).

% Família pai Bob, filha Ann
genitor(bob, ann).

% Família pai Bob, filha Pat
genitor(bob, pat).

% Família mãe Pat, filho Jim
genitor(pat, jim).

% Ideia de descendência. Um filho é descendente de seus respectivos pais e avós.
% A recursão pode ser usada para representar a descendência de qualquer grau
% 1° Caso : SEM recursão
% É uma solução que fica atrelada ao tamanho da árvore genealógica e isso não é muito interessante
/*descendente(X, Y) :- genitor(Y, X).
descendente(X, Y) :- genitor(Y, Z) , genitor(Z, X).
descendente(X, Y) :- genitor(Y, Z) , genitor(Z, W) , genitor(W, X).*/

% 2° Caso : COM recursão
% CASO BASE : Alguém é filho de alguém
descendente(X, Y) :- genitor(Y, X).
% Usando "W" para pegar o nível de descendência intermediário
% Como quero "chegar até o X", mantem ele como parâmetro
descendente(X, Y) :- genitor(Y, W) , descendente(X, W).

% Resolução de problema de fatorial
% Ex: fatorial de 5 = 5 * 4 * 3 * 2 * 1 = 120
fatorial(0, 1).
fatorial(N, F) :- N > 0 , % Tratamento de entrada do usuário
                  N1 is N - 1 , % Diminuir N para cálculo do fatorial
                  fatorial(N1, F1) , % Variável F1 auxiliar para salvar o valor de retorno da recursão
                  F is N * F1. % Usa-se o valor atual com o retorno da recursão

% EXERCÍCIO DE RECURSÃO - Cadeia alimentar
animal(urso).
animal(peixe).
animal(peixinho).
animal(lince).
animal(raposa).
animal(coelho).
animal(veado).
animal(guaxinim).
planta(alga).
planta(grama).

come(urso, peixe).
come(lince, veado).
come(urso, raposa).
come(urso, veado).
come(peixe, peixinho).
come(peixinho, alga).
come(guaxinim, peixe).
come(raposa, coelho).
come(coelho, grama).
come(veado, grama).
come(urso, guaxinim).

cadeiaAlimentar(X, Y) :- come(Y, X) , animal(X).
cadeiaAlimentar(X, Y) :- come(Y, W) , cadeiaAlimentar(X, W).

% EXERCÍCIO - Resolver equação de recorrência
recorrencia(N, 2) :- N = 1.
recorrencia(N, R) :- N >= 2 ,
                     N1 is N - 1 ,
                     recorrencia(N1, R1) ,
                     R is R1 - 3 * (N * N).