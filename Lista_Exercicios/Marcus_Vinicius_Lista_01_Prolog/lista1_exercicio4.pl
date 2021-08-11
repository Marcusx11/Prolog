/* 4) Base de dados = Relacionamento de funcionarios da empresa 
      funcionario(código, nome, salário) */


% Relação de funcionários
funcionario(1, ana, 1000.90).
funcionario(2, bia, 1200.00).
funcionario(3, ivo, 903.50).

% Relação de dependencia
dependente(ary, ana).
dependente(rai, ivo).
dependente(eva, ivo).

% a) Verificando os dependentes de Ivo
dependenteIvo :- dependente(Y, ivo) , writeln(Y).

% b) Verificando de quem Ary é dependente
deQuemAryEhDependente :- dependente(ary, X) , writeln(X).

% c) Verificando quem depende de funcionário com salário inferior a R$ 950,00
dependenteFuncionarioSalario(X) :- dependente(X, Y) , funcionario(_, Y, Salario) ,
                                   (Salario < 950 -> write(X) , writeln(' depende de alguem com salario inferior a 950') , !) ;
                                   (write(X) , writeln(' nao depende de alguem com salario inferior a 950')).

% d) Encontrando funcionários sem dependencia
funcionarioSemDependencia(X) :- funcionario(_, X, _) , \+ dependente(_, X).