% Verificando se um elemento pertence a lista

% A cauda da lista não é importante pra gente nesse caso, portanto ela é anônima
% Caso base = O elemento informado está no começo da lista
pertence(X, [X | _]).
% Busca-se o elemento na nova lista, sendo esta cauda da lista original
pertence(X, [_ | T]) :- pertence(X, T).

% Verificando se um elemento é o último elemento de uma lista
% Caso base, o X é o único elemento da lista
isUltimo(X, [X]).
% A recursão faz a retirada da cabeça até chegar-se no último elemento
isUltimo(X, [_ | T]) :- isUltimo(X, T).

% Verificando se a lista possui dois elementos consecutivos
% Ex: 1,2 são consecutivos em [2, 3, 4, 5, 1, 2]? Sim

% Caso base : Os elementos consecutivos estarem no início da lista
consecutivos(X, Y, [X, Y | _]).
% Recursão : Se eu não achei no caso base, realiza a remoção do primeiro elemento e realiza a recursão
consecutivos(X, Y, [_ | T]) :- consecutivos(X, Y, T).

% Procedimento que retorna o tamanho de uma lista
% Caso base : lista vazia, tamanho zero
tamanhoLista([], 0).
% Recursão : Corta-se a cabeça da lista e soma mais 1 a medida que vai chegando no caso base
% Quando este método retornar da recursão, ele me dará o valor de Tam1, para a respectiva soma
tamanhoLista([_ | T], Tam) :- tamanhoLista(T, Tam1) , Tam is 1 + Tam1.