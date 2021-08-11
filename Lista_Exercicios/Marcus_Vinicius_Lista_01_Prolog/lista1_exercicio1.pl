% a) Definindo as relações de pai e mãe

mae(ana, eva).
mae(eva, noe).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(lia, gal).

pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ivo, eva).
pai(ary, gal).

% b) Definindo os fatos sobre quem é homem e/ou mulher
homem(ivo).
homem(rai).
homem(noe).
homem(gil).
homem(ary).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).

% c) Verificando quem gerou quem
gerou(X, Y) :- mae(X, Y) ; pai(X, Y).

% d) Verificando relação de filhos
filho(X, Y) :- (pai(Y, X) ; mae(Y, X)) , homem(X).
filha(X, Y) :- (pai(Y, X) ; mae(Y, X)) , mulher(X).

% Verificando a relação de tios. Primeiramente colocando a declração de irmãos
irmaos(X, Y) :- (pai(Z, X) , pai(Z, Y)) ; (mae(W, X) , mae(W, Y)).

tio(X, Y) :- (\+ pai(X, Y) , \+ mae(X, Y)) , (pai(Z, Y) ; mae(W, Y)) , (irmaos(X, Z) ; irmaos(X, W)) , homem(X) , !.
tia(X, Y) :- (\+ pai(X, Y) , \+ mae(X, Y)) , (pai(Z, Y) ; mae(W, Y)) , (irmaos(X, Z) ; irmaos(X, W)) , mulher(X) , !.

% Verificando a relação de primos
primo(X, Y) :- (pai(Z, X) ; mae(W, X)) , (\+ gerou(Z, Y) ; \+ gerou(W, Y)) , (irmaos(Z, V) ; irmaos(W, V)) , gerou(V, Y) , homem(X) , !.
prima(X, Y) :- (pai(Z, X) ; mae(W, X)) , (\+ gerou(Z, Y) ; \+ gerou(W, Y)) , (irmaos(Z, V) ; irmaos(W, V)) , gerou(V, Y) , mulher(X) , !.

% Verificando a relação de avós
avo_homem(X, Y) :- \+ gerou(X, Y) , (pai(Z, Y) ; mae(W, Y)) , (gerou(X, Z) ; gerou(X, W)) , homem(X) , !.
avo_mulher(X, Y) :- \+ gerou(X, Y) , (pai(Z, Y) ; mae(W, Y)) , (gerou(X, Z) ; gerou(X, W)) , mulher(X) , !.