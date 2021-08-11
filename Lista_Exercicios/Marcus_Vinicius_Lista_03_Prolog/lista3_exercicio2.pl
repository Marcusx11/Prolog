/* 2) Crie uma base de conhecimento com os seguintes quaternários. Os fatos
representam dados dos alunos, disciplina, nota e frequência. */

nota_freq(alberto, logica, 9.0, 60.0).
nota_freq(juca, logica, 7.0, 95.0).
nota_freq(maria, logica, 4.0, 75.0).

% a) Faça uma consulta à base de conhecimento para retorna apenas o nome e a nota dos alunos.
apenasNomeNota(Nome, Nota) :- nota_freq(Nome, _, Nota, _).

/* b) Crie um regra com a conclusão no formato "aprovado(X, Y, Z, W)". Ela é
responsável por informar se o aluno está aprovado considerando que a nota seja
maior ou igual a 7 e a frequência maior ou igual a 75. */
aprovado(X, Y, Z, W) :- nota_freq(X, Y, Z, W) ,
                        (
                            (Z >= 7.0 , W >= 75.0) , write(X) , write(' aprovado(a)!')
                        ).

% c) Consulte pelos aprovados em qualquer disciplina.
/* Resultado: aprovado(X, _, Z, W). 
                alberto reprovado(a)...
                X = alberto,
                Z = 9.0,
                W = 60.0 ;
                juca aprovado(a)!
                X = juca,        
                Z = 7.0,
                W = 95.0 ;       
                juca reprovado(a)...
                X = juca,
                Z = 7.0,
                W = 95.0 ;
                maria reprovado(a)...
                X = maria,
                Z = 4.0,
                W = 75.0.
*/

% d) Consulte pelos aprovados em lógica
/* Resultado: aprovado(X, logica, Z, W). 
                juca aprovado(a)!
                X = juca,
                Z = 7.0,
                W = 95.0 ;
                false.
*/

/* e) Incluindo uma regra que permita determinar os alunos reprovados em qualquer
disciplina. */
reprovado(X, Y, Z, W) :- nota_freq(X, Y, Z, W) ,
                        (
                            (Z < 7.0 ; W < 75.0) , write(X) , write(' reprovado(a)...')
                        ).

% f) Consulte pelos reprovados em qualquer disciplina
/* Resultado: reprovado(X, Y, Z, W).
                alberto reprovado(a)...
                X = alberto,
                Y = logica,
                Z = 9.0,
                W = 60.0 ;
                maria reprovado(a)...
                X = maria,
                Y = logica,
                Z = 4.0,
                W = 75.0 ;
*/