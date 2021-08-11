/* 5) Escreva uma regra com o predicado troca12(Lista1, Lista2) o qual checa se
a lista é idêntica, exceto pelo fato que os dois primeiros elementos devem
estar trocados. Exemplo verdadeiro: Lista1 = [a,b,c,d,e,b] e Lista2 =
[b,a,c,d,e,b] */

% Método recursivo que verifica se as listas são iguais
listasIguais([], []).
listasIguais([H1 | T1], [H2 | T2]) :- H1 = H2 , listasIguais(T1, T2).

% Realiza segundo split para fazer a verificação sobre a troca dos 2 primeiros elementos da lista
verificando2PrimeirosIguais(H1, T1, H2, T2) :- T1 = [Head1 | Tail1] ,
                                               T2 = [Head2 | Tail2] ,
                                               H1 = Head2 , H2 = Head1 , listasIguais(Tail1, Tail2).

% Realiza o "split" da lista para então pegar os primeiros elementos de ambas as listas
troca12([H1 | T1], [H2 | T2]) :- verificando2PrimeirosIguais(H1, T1, H2, T2).