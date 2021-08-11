% Se já achamos a solução, pra que fazer backtracking?

funcao(X, F) :- (
                    (X < 3 , F is 0 , !) ;
                    (3 =< X , X < 6 , F is 2, !) ;
                    (6 =< X , F is 4, !)  
                ).


% Modificação da lógica. Se os cortes forem tirados, muda totalmente a lógica da solução
f(X, 0) :- X < 3 , !.
f(X, 2) :- X < 6 , !.
f(X, 4). % Seria o equivalente a um caso "else"

% Segundo exemplo
b.
d.
p.
q.
r.
s.
t.
u.
v.
% No caso abaixo, a cláusula de corte vai impedir o backtracking das regras a sua esquerda.
% As regras a direita do corte irão realizar retrocesso normalmente.
/* Mesmo se tivesse outros predicados com o mesmo nome mas com cláusulas diferentes, o backtracking não seria feito
  se determinada regra deste mesmo nome estivesse à esquerda do corte */
c :- p , q , r , ! , s , t , u.
c :- v.
a :- b , c , d.

% Exercício de Corte
m(1).
m(2) :- !.
m(3).
m1(X, Y) :- m(X) , m(Y).
m2(X, Y) :- m(X) , ! , m(Y).

/*
  - m(X) ->
  - m1(X, Y) ->
  - m2(X, Y) ->
  - m(3) -> 
*/