/* 5) Base de Dados: Associação de cada pessoa com seu esporte favorito 
   joga(pessoa, esporte). */

joga(ana, volei).
joga(bia, tenis).
joga(ivo, basquete).
joga(eva, volei).
joga(leo, tenis).

% Fazendo uma regra para encontrar parceiros que jogam o mesmo esporte favorito
parceiros(P, X) :- joga(P, Esporte) , joga(X, Esporte).