
% Importante declarar previamente quais fatos serão manipulados dinamicamente
:-dynamic mulher/1.
:-dynamic homem/1.
:-dynamic genitor/2. 

/* /// FATOS /// */

% Estou dizendo que os átomos abaixo "são mulheres"
mulher(pam).

mulher(liz).

mulher(ann).

mulher(pat).

% Estou dizendo que os átomos abaixo "são homens"
homem(tom).

homem(bob).

homem(jim).


% Família pai Tom, mãe Pam e filho Bob
genitor(pam, bob).
genitor(tom, bob).

% Família pai Tom, filha Liz
genitor(tom, liz).

% Família pai Bob, filha Ann
genitor(bob, ann).

% Família pai Bob, filha Pat
genitor(bob, pat).

% Família mãe Pat, filho Jim
genitor(pat, jim).

prole(X, Y) :- genitor(Y, X).

mae(X, Y) :- genitor(X, Y) , mulher(X).

avos(X, Z) :- genitor(X, Y) , genitor(Y, Z).

% listing(<nome_functor>) = Lista todos os fatos e regras para um determinado nome (pode-se especificar a aridade também)
% assert/1 - Acrescenta o fato/regra como último item do predicado
% asserta/1 - Acrescenta o fato/regra como primeiro item do predicado
/* Exemplo de uso destes acréscimos: Um robô explorando um local. A cada nova descoberta
   deste local, ele pode inserir um fato novo na sua base de conhecimentos. */

% retract/1 - Remove da base de conhecimento a primeira cláusula (fato ou regra) que unifica com o termo que é passado como parâmetro.
% retractall/1 - Remove da base de conhecimento todos os fatos e regras cuja cláusula (fato ou regra) unifique com o termo que é passado como parâmetro.

/* abolish/1 - Remove da base de conhecimento todos os fatos e regras pelo nome da regra ou fato/aridade que é passada
   como parâmetro (são removidos predicados estáticos sem precisar declará-los como dinâmicos) */
/* abolish/2 - Semelhante a "abolish/1", mas passando o nome do fato/regra e a sua aridade separadamente
   (são removidos predicados estáticos também) */
