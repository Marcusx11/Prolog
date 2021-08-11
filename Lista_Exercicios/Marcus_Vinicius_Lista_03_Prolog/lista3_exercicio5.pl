/* 5) Represente em uma base de conhecimento um mapa de estradas que
interconectam cidades dado pelas árvores abaixo: */

conectaDiretamente(a, b).
conectaDiretamente(a, d).
conectaDiretamente(a, c).
conectaDiretamente(c, e).
conectaDiretamente(c, f).
conectaDiretamente(f, g).
conectaDiretamente(h, i).

/* a) Duas cidades estão conectadas se há uma ligação direta entre elas ou se há
uma ligação indireta entre elas. Assim, crie as regras responsáveis por essa
consulta. */
cidadesConectadas(X, Y) :- conectaDiretamente(X, Y).
cidadesConectadas(X, Y) :- conectaDiretamente(X, Y1) , cidadesConectadas(Y1, Y) ; conectaDiretamente(Y, X1) , cidadesConectadas(X, X1).

% b) Dada uma cidade, deseja-se saber todas as cidades alcançáveis a partir dela.
cidadesAlcancaveis(X, Y) :- cidadesConectadas(X, Y).

% c) Dadas duas cidades deseja-se saber se há conexão ou não entre elas.
haConexaoOuNao(X, Y) :- (
                            (cidadesConectadas(X, Y) , write('Ha conexao')) ;
                            (\+ cidadesConectadas(X, Y) , write('Nao ha conexao'))
                        ).