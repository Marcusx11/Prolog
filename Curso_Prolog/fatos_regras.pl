
/* /// FATOS /// */

% Estou dizendo que os átomos abaixo "são mulheres"
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

% Prolog consegue inferir os resultados. Ao colocar uma variável como parâmetro, retorna todos os valores daquela regra.
% Não foi preciso programar em como retornar estes resultados. Foi apenas preciso a base de conhecimento e uma consulta a ela.

% É interessante agrupar os fatos. Isso falita no momento do Prolog buscar o resultado da consulta.
% O nome do fato se chama "functor". Dentro dos parenteses chamamos de quantidade de aridade(n) sendo n o número de parâmetros do fato.

/* /// REGRAS /// */
% Verificando quem são os filho de determinados pais
% Se "X" é filho de "Y", então Y é genitor de X
prole(X, Y) :- genitor(Y, X).

% Criando regra para verificar quem é mãe de quem
% Se "X" é mãe de "Y", então "X" deve ser genitor de "Y" E mulher
mae(X, Y) :- genitor(X, Y) , mulher(X).

% Avós.
% Para "X" ser avó de "Z", "X" deve ser genitor de um dos genitores de "Z"
avos(X, Z) :- genitor(X, Y) , genitor(Y, Z).
