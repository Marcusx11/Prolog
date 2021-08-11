/*
   3) A base de conhecimento abaixo representa a área e população dos países
      pais(Nome, Área, População)
*/

% Fiz as consultas para ficaram mais genéricas e responderem casos de outros países da base de dados também

pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(india, 3, 450).

densidadeDemografica(Pais, D) :- pais(Pais, Area, Pop) ,
                                 Area > 0 ,   
                                 D is Pop / Area ,
                                 write('A densidade demografica de ') , write(Pais) , write(' eh de: ') , writeln(D).



% b) Verificando a diferença de densidade entre China e Índia
diferencaDensidades(Pais1, Pais2) :- densidadeDemografica(Pais1, D1) , densidadeDemografica(Pais2, D2) ,
                                     Dif is D1 - D2 , abs(Dif, Num) ,
                                     write('A diferenca nas densidades eh de ') , writeln(Num).


% c) Verificando se a área do Brasil é igual a dos Estados Unidos
areasIguais(Pais1, Pais2) :- pais(Pais1, A1, _) , pais(Pais2, A2, _) ,
                             (A1 =:= A2 -> writeln('Areas iguais') , !) ;
                             (write('Areas nao sao iguais')).

% Verificando se a população dos estados unidos é maior do que a da Índia
populacaoMaior(Pais1, Pais2) :- pais(Pais1, _, P1) , pais(Pais2, _, P2) ,
                                (P1 > P2 -> writeln('Populacao do primeiro pais maior que a do segundo') , !) ;
                                (writeln('Populacao do primeiro pais nao eh maior do que a do segundo')).
                                       