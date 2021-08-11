% 8) Supunha que foi dada a seguinte base de conhecimento com os seguintes fatos:

train(eins,um).
train(zwei,dois).
train(drei,tres).
train(vier,quatro).
train(fuenf,cinco).
train(sechs,seis).
train(sieben,sete).
train(acht,oito).
train(neun,nove).

/* Escreva uma regra com o predicado listatrain(G,E) onde converte uma lista com o
número dos trains escritos em alemão para uma lista escrita em português. Por
exemplo: */

listatrain([], []).
listatrain([H | T], X) :- train(H, Y) , listatrain(T, X2) , X = [Y | X2]. 