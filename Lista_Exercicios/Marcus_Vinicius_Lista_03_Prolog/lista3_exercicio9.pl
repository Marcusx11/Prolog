/* 9) Imagine um mapa em um quadriculado de 4 x 4 posições, com cada posição
tendo coordenadas (x, y). Crie os seguintes predicados:
    - existe_acima
    - existe_abaixo
    - existe_direita
    - existe_esquerda
    Cada predicado tem 2 parâmetros: uma coordenada x e uma coordenada y. Os
    predicados devem ter valor verdadeiro se existe uma posição no mapa na posição
    indicada (acima, abaixo, à direita ou à esquerda). Por exemplo, se a posição(1,
    1) fica no canto inferior esquerdo do mapa, não existe nenhuma posição abaixo
    dela, mas existe uma posição acima. Daí os seguintes exemplos de consulta:
    ?- existe abaixo(1, 1).
    false .
    ?- existe acima(1, 1).
    true. 
*/

existe_acima(_, Y) :- Y + 1 =< 4.
existe_abaixo(_, Y) :- Y - 1 > 0.
existe_direita(X, _) :- X + 1 =< 4.
existe_esquerda(X, _) :- X - 1 > 0.