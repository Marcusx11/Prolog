
/* Uma questão importante do operador "is" é:
   - As variáveis que fomos usar do lado direito do operador devem estar instanciadas.
   - Se elas não tiverem valor, o Prolog retorna um erro. */

/* É possível também atribuir um valor ao parametro "S", conferindo se o valor dado é
   realmente a soma de A com B (retorna um valor booleano) */
soma(A, B, S) :- S is A + B.

% Lista de Exercícios de aritmética
% 1)
maiorQue100() :- write('Entre com o numero: ') ,
                 read(X) ,
                 (
                    ( X > 100 , write('O numero eh maior que cem')) ;
                    ( X =< 100 , write('O numero eh menor ou igual a 100'))
                 ).

% 2)
nota(joao, 5.0).
nota(mariana, 9.0).
nota(joaquim, 4.5).
nota(maria, 6.0).
nota(cleuza, 8.5).
nota(mara, 4.0).
nota(joana, 8.0).
nota(jose, 6.5).
nota(mary, 10.0).

situacaoAluno(X) :- nota(X, Nota) ,
                    (
                        (Nota >= 7.0 , Nota =< 10.0) , write('Aprovado') ;
                        (Nota >= 5.0 , Nota =< 6.9) , write('Recuperacao') ;
                        (Nota >= 0.0 , Nota =< 4.9) , write('Reprovado')
                    ).

/* Unificação:
    Ex; a regra ponto(A, B) = ponto(1, 2).? (as regras se unificam?)
    Neste caso sim, pois, as regras tem o mesmo nome, a mesma aridade
    e uma variável pode se unificar com qualquer coisa.
    
    Se fosse, por exemplo: ponto(A, B) = ponto(X, Y, Z), as regras
    não se unificariam, pois mesmo elas tendo o mesmo nome, suas aridades
    são diferentes
    
    Outro exemplo:
    t(p(-1,0), P2, P3) = t(P1, p(1,0), p(0, Y)). (as regras se unificam?)
    Sim, pois elas tem o mesmo nome, a mesma aridade, mesmo que há um fato
    como parâmetro do functor, a variável consegue se unificar com qualquer coisa, neste
    caso as variáveis de um lado se unificaram com os fatos do outro
*/

% Cálculo do índice de massa corporal
imc() :- write('Digite seu peso:') , read(Peso) ,
         write('Digite sua altura:') , read(Altura) ,
         (
             IMC is Peso / (Altura * Altura) ,
             write('Seu IMC eh igual a ') , write(IMC) % Concatenação de writes
         ).