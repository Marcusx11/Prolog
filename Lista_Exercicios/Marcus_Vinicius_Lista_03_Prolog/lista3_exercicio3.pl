/* 3) Faça um código em PROLOG que tem uma base de conhecimentos representando o
estado atual de um tabuleiro do jogo da velha e diga se há vencedor (cruz
ou bola). */

linha1(o, x, x).
linha2(x, x, o).
linha3(o, o, x).

% Possibilidades de vitória do jogo da velha de X
vencedorX() :- linha1(x, x, x) ;
              (
                  linha1(x, _, _) ,
                  linha2(x, _, _) ,
                  linha3(x, _, _)
              ) ;
              (
                  linha1(_, _, x) ,
                  linha2(_, _, x) ,
                  linha3(_, _, x)
              ) ;
              (
                  linha1(_, x, _) ,
                  linha2(_, x, _) ,
                  linha3(_, x, _)
              ) ;
              linha2(x, x, x) ;
              linha3(x, x, x) ;
              (
                  linha1(_, _, x) ,
                  linha2(_, x, _) ,
                  linha3(x, _, _)
              ) ;
              (
                  linha1(x, _, _) ,
                  linha2(_, x, _) ,
                  linha3(_, _, x) 
              ).

% Possibilidades de vitória do jogo da velha de O
vencedorO() :- linha1(o, o, o) ;
              (
                  linha1(o, _, _) ,
                  linha2(o, _, _) ,
                  linha3(o, _, _)
              ) ;
              (
                  linha1(_, _, o) ,
                  linha2(_, _, o) ,
                  linha3(_, _, o)
              ) ;
              (
                  linha1(_, o, _) ,
                  linha2(_, o, _) ,
                  linha3(_, o, _)
              ) ;
              linha2(o, o, o) ;
              linha3(o, o, o) ;
              (
                  linha1(_, _, o) ,
                  linha2(_, o, _) ,
                  linha3(o, _, _)
              ) ;
              (
                  linha1(o, _, _) ,
                  linha2(_, o, _) ,
                  linha3(_, _, o) 
              ).

vencedorJogoVelha :- vencedorX , write('X venceu') ; vencedorO , write('O venceu') ; (\+ vencedorX , \+ vencedorO) , write('Deu velha').