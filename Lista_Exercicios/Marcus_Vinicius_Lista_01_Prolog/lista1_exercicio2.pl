% Definindo as relações de pai e mãe

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

% Definindo os fatos sobre quem é homem e/ou mulher
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

% Verificando quem gerou quem
gerou(X, Y) :- mae(X, Y) ; pai(X, Y).

% Verificando relação de filhos
filho(X, Y) :- (pai(Y, X) ; mae(Y, X)) , homem(X).
filha(X, Y) :- (pai(Y, X) ; mae(Y, X)) , mulher(X).

% Questão 2 - Codifique as regras equivalentes às seguintes sentenças
% a) Todo mundo que tem filhos é feliz
feliz(X) :- filho(Y, X) ; filha(Y, X).

% b) Um casal é formado por duas pessoas que têm filhos em comum
casal(X, Y) :- (filho(Z, X) , filho(Z, Y)) ; ((filha(W, X) , filha(W, Y))) , !.