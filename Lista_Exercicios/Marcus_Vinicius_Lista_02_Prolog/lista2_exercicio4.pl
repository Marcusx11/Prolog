/* 4) Escreva uma regra com o predicado segundo(X,Lista) o qual checa se X é o
   segundo elemento da lista
*/

segundo(X, [_ | T]) :- [Head | _] = T , Head = X.