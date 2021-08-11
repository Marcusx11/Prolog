
% EXERCÍCIO 1

% Base de conhecimentos sobre uma determinada escola
% aluno(Nome_do_aluno, Disciplina_que_esta_matriculado)

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).

% frequenta(Nome_do_aluno, Universidade_que_frequenta)
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).

% professor(Nome_do_professor, Disciplina_que_ele_leciona)
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).

% funcionario(Nome_do_funcionario, Universidade_em_que_trabalha)
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).

% regras
aluno_professor(X, Y) :- aluno(X, Z) , frequenta(X, W) , professor(Y, Z) , funcionario(Y, W).

pessoa_universidade(X, Y) :- frequenta(X, Y) ; funcionario(X, Y).

% EXERCÍCIO 2

% Base de todos da capital de todos os estados da região sudeste do Brasil
capital_do_estado(belo_horizonte, minas_gerais).
capital_do_estado(rio_de_janeiro, rio_de_janeiro).
capital_do_estado(sao_paulo, sao_paulo).
capital_do_estado(vitoria, espirito_santo).

% Base de dados sobre quais tipos sanguíneos doam/recebem de quais
doa(a, a).
doa(a, ab).
doa(b, b).
doa(b, ab).
doa(ab, ab).
doa(o, a).
doa(o, b).
doa(o, ab).
doa(o, o).

recebe(a, a).
recebe(a, o).
recebe(b, b).
recebe(b, o).
recebe(ab, a).
recebe(ab, b).
recebe(ab, ab).
recebe(ab, o).
recebe(o, o).