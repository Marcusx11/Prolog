% Informando se uma lista é prefixo da outra. Prefixo = Início de uma outra lista

prefixo([], _).
prefixo([H1|T1], [H2|T2]) :- H1 = H2 , prefixo(T1, T2).

% Verificando se uma lista 1 é sufixo de outra lista 2
% Caso base = Ambas as listas são iguais
sufixo(L, L).
% Recursão = Mantêm-se a lista 1, cortando-se a cabeça até restar os elementos do sufixo da lista
sufixo(L1, [_|L2]) :- sufixo(L1, L2).

% Exercício = Pega-se uma lista de entrada e retorna-se outra lista apenas com os elementos pares
listaPares([], []).
% Posso unificar uma variável com um valor da cabeça com o pipe de uma outra lista, que será a cauda da lista final
listaPares([H | T], S) :- listaPares(T, T1) , 
                            % Unificando a cabeça da lista original com a nova calda pega como parâmetro
                            ( 
                                (H mod 2) =:= 0 -> S = [H|T1] ;
                                S = T1  % S recebe apenas o que veio da recursão
                            ).


% Verificando se todos os elementos de uma lista são o átomo "a"
todosSaoAs([a]).
todosSaoAs([H | T]) :- H = a , todosSaoAs(T).

% Verificando se uma lista contem 1 elemento "1"
contemUm([1]).
contemUm([H | T]) :- (
                        H = 1 , ! ;
                        contemUm(T)
                     ).

% Base de conhecimentos (Numero em ingles, sua tradução em portugues)
traducao(one, um).
traducao(two, dois).
traducao(three, tres).
traducao(four, quatro).
traducao(five, cinco).
traducao(six, seis).
traducao(seven, sete).
traducao(eight, oito).
traducao(nine, nove).

% Construir um predicado que retorna a traducao da lista de numeros de ingles para portugues
listaTraducao([], []).
listaTraducao([H | T], X) :- traducao(H, Y) , listaTraducao(T, X1) , X = [Y | X1].