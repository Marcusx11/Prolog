% 1) Crie uma regra que retorne os dois primeiros elementos de uma lista.

doisPrimElem([H | T], E1, E2) :- E1 = H , T = [H1 | _] , E2 = H1.

% 2) Crie uma regra que retorne “true” se duas listas tem a mesma quantidade de elementos.
listasTamIguais([], [], 0, 0).
listasTamIguais([_ | T1], [_ | T2], C1, C2) :- listasTamIguais(T1, T2, C3, C4) , C1 is C3 + 1 , C2 is C4 + 1 , C1 = C2.

% 3) Crie uma regra que retorne o último elemento de uma lista.
ultimoElemento([X], X).
ultimoElemento([_ | T1], X) :- ultimoElemento(T1, X1) , X = X1.

% 4) Crie uma regra para ver se um elemento pertence a lista
pertenceALista([X], Y) :- X = Y.
pertenceALista([H | T], X) :- (X = H , !) ;
                              pertenceALista(T, X).

/* 5) Verifique se dois elementos são consecutivos. Dois elementos E1 e E2 são
consecutivos se eles forem o primeiro e o segundo elementos da lista ou, se
forem consecutivos na cauda da lista. */
consecutivos([X, Y], X, Y).
consecutivos([H | T], X, Y) :- (T = [H1 | _] , X = H , Y = H1 , !) ;
                               consecutivos(T, X, Y).

% 6) Crie uma regra para saber o tamanho (qtde de elementos) de uma lista
tamLista([], 0).
tamLista([_ | T], N) :- tamLista(T, N1) , N is N1 + 1.

% 7) Crie uma regra para somar os elementos de uma lista
somarElemLista([], 0).
somarElemLista([H | T], Soma) :- somarElemLista(T, Soma1) , Soma is H + Soma1.

/* 8) Crie uma regra que retorne o e-nésimo elemento de uma lista. Lembre-se o
primeiro elemento de uma lista é a cabeça da lista e o e-nésimo elemento de uma
lista é o (n-1)-ésimo elemento da cauda. */
enesimoTermo([], -1).
enesimoTermo([H | T], N) :- N > 0, enesimoTermo(T, N1) , N1 > 0 , (N =:= N1 -> write(H)) ; N is N1 + 1.
% Não consegui

/* 9) Pegar elementos de uma lista dada a lista de posições. pegar(Lista de
posições, lista a ser pesquisada, lista resultante). Lembre-se, Pegar nenhum
elemento de uma lista é obter uma lista vazia e seja a lista de posições [M|N] e
a lista de elementos L; pegar os elementos de L especificados na lista de
posições significa pegar o M-ésimo elemento de L e os elementos especificados na
cauda N da lista de posições. */
% Não consegui

/* 10) Crie uma regra que receba uma lista e retorne uma lista com os elementos
duplicados. Atenção, se a lista for a lista vazia, o resultado é a lista vazia,
caso contrário, duplicar os elementos de uma lista cuja a cabeça é X e a cauda é
Tail, significa duplicar a cabeça, e duplicar os elementos de Tail */
duasVezes([], []).
duasVezes([H | T], X) :- Duplo1 = H, Duplo2 = H , duasVezes(T, X1) , X = [Duplo1, Duplo2 | X1].

/* 11) Crie uma regra que insira um elemento na primeira posição da lista. Inserir
um elemento na lista, significa criar uma nova lista na qual, o novo elemento é
o cabeça. */
novaLista([H | T], ElemNovo, LNova) :- LNova = [ElemNovo, H | T].

/* 12) Concatenar a primeira lista com a segunda. Se a primeira lista for uma lista
vazia, então a segunda lista é a lista resultante. Se a primeira lista não for
vazia, retira um elemento e coloque na lista resultante. Veja uma possível
chamada: concatena(Lista1,Lista2,ListaResultante). */
concatena([H1 | T1], [H2 | T2], ListaResultante) :- L = [H1, T1, H2 | T2] , flatten(L, ListaResultante).

/* 13) Chame a função concatena (do exercício anterior) passando duas variáveis aos
dois primeiros parâmetros e uma lista no terceiro parâmetro. O que aconteceu? Ele retornou "false". */