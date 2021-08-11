/* 9) Escreva uma regra com o predicado duasVezes(Entrada, Saida) onde o
argumento da esquerda é uma lista, e o argumento da direita é outra
contendo todos os elementos da esquerda duas vezes.

Por exemplo, para a consulta:
duasVezes([a,4,teste],X). deve-se retornar X = [a,a,4,4,teste,teste]). */

duasVezes([], []).
duasVezes([H | T], X) :- Duplo1 = H, Duplo2 = H , duasVezes(T, X1) , X = [Duplo1, Duplo2 | X1].