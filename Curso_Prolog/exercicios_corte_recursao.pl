
quadradoNumero :- repeat ,
                        write('Digite um numero para ver seu quadrado. O programa ira parar ao digitar "stop": ') ,
                        read(N) ,
                        (
                            N == 'stop' -> ! ;
                            Q is N * N , write(Q) , nl , fail
                        ).


% Imprime os números de 0 a X
imprimeAte(0) :- write(0) , write(', ').
imprimeAte(X) :- X1 is X - 1 , imprimeAte(X1) , write(X) , write(', ').

% Calculando um número X elevado a Y somente com operações de soma, subtração e multiplicação
% Qualquer número elevado a 0 é igual a 1
elevado(_, 0, 1).
% Qualquer número elevado a 1 é igual a ele mesmo
elevado(X, 1, X).
elevado(X, Y, Z) :- Y > 0 , 
                    Y1 is Y - 1 , 
                    elevado(X, Y1, Z1) ,
                    Z is X * Z1.