% Fail - Falha -> Força o Prolog a realizar backtracking

aluno(marcelo).
aluno(andre).
aluno(roberto).

escreverSemFail :- aluno(X) , write(X).
% nl = Quebra de linha
escreverComFail :- aluno(X) , write(X) , nl , fail.

% Repeat -> Repete uma cláusula Prolog várias vezes
% repeat , write('ola') , nl , fail. <- Realiza um loop infinito

lerDados(X) :- write('Entre com um numero (1 a 5): ')  , read(X).
processarDados(G, N) :- G =:= N , write('Voce acertou!!!') , nl.
% Utilizando o fail para forçar a voltar para o repeat, e a execução do programa continuar
processarDados(G, N) :- G \= N , write('Errou o numero...') , nl , fail.

adivinheNumero :- N is random(5) + 1 ,
                  repeat ,
                        lerDados(G) ,
                        processarDados(G, N).


% Outra forma de se usar o repeat

processar(Palavra) :- write('Palavra digitada: ') , write(Palavra) , nl.

repete :- repeat ,
                write('Digite a palavra: ') ,
                read(Palavra) ,
                % Algo abaixo similar a um "if"
                (
                    Palavra == 'fim' -> ! ;
                    processar(Palavra) , fail
                ).
