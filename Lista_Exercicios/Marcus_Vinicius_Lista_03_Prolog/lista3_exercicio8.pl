/* 8) Insira a seguinte base de conhecimento no Prolog e responda as questões a
seguir. */

homem(pedro).
homem(marcos).
homem(ze).
mulher(maria).
mulher(joana).
idade(ze,30).
idade(maria,40).
idade(marcos,20).
idade(pedro,25).
idade(joana,28).
gosta(ze,aventura).
gosta(maria,comedia).
gosta(joana,romance).
gosta(marcos,terror).
gosta(marcos,romance).
gosta(pedro,romance).
gosta(maria,romance).
opcao(ze,20,40).
opcao(pedro,25,55).
opcao(marcos,20,21).
opcao(maria,25,55).
opcao(joana,28,30). % // significa que a joana gostaria de se relacionar com pessoas entre 28 a 30 anos

/* a) afinidade_filme(X,Y) Seleciona pessoas com o mesmo gosto de filme (sendo X e
Y pessoas, X possui o mesmo gosto de filme do que Y). */
afinidade_filme(X, Y) :- gosta(X, Filme) , gosta(Y, Filme).

% b) casal(X,Y) Seleciona casais (sexos diferentes)
casal(X, Y) :- (homem(X) , mulher(Y)) ; (homem(Y) , mulher(X)).

/* c) casal_afinidade_filme(X,Y)Seleciona casais com o mesmo gosto de filme */
casal_afinidade_filme(X, Y) :- casal(X, Y) , (gosta(X, Filme) , gosta(Y, Filme)).

/* d) casal_afinidade_idade(X,Y) Seleciona casais cujos gostos de faixa etárias
sejam atendidos */
casal_afinidade_idade(X, Y) :- casal(X, Y) , (opcao(X, F1, F2) , opcao(Y, F1, F2)).

% e) casal_total(X,Y) Seleciona casais com afinidade em filme e faixa etária
casal_total(X, Y) :- casal_afinidade_filme(X, Y) , casal_afinidade_idade(X, Y).