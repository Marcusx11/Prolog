/* 6) Insira a seguinte base de conhecimento no Prolog e responda as questões a
seguir. */

animal(urso).
animal(peixe).
animal(raposa).
animal(veado).
animal(minhoca).
animal(lince).
animal(coelho).
animal(guaxinim).
animal(mosca).
animal(peixinho).
planta(grama).
planta(alga).
planta(planta_carnivora).
come(urso,peixe).
come(peixe,peixinho).
come(peixinho,alga).
come(peixe,alga).
come(urso,raposa).
come(veado,grama).
come(peixe,minhoca).
come(urso,guaxinim).
come(raposa,coelho).
come(urso,veado).
come(lince,veado).
come(planta_carnivora,mosca).
come(veado,planta_carnivora).

% a) Quais são os elementos que comem peixe? Urso

% b) Quais são os elementos com propriedade animal?
/* Resultado: animal(X).
                X = urso ;
                X = peixe ;
                X = raposa ;
                X = veado ;
                X = minhoca ;
                X = lince ;
                X = coelho ;
                X = guaxinim ;
                X = mosca ;
                X = peixinho.
*/

% c) Quais são todos os elementos que participam da relação come?
/* Resultado: 
    come(X, Y).
        X = urso,
        Y = peixe ;
        X = peixe,
        Y = peixinho ;
        X = peixinho,
        Y = alga ;
        X = peixe,
        Y = alga ;
        X = urso,
        Y = raposa ;
        X = veado,
        Y = grama ;
        X = peixe,
        Y = minhoca ;
        X = urso,
        Y = guaxinim ;
        X = raposa,
        Y = coelho ;
        X = urso,
        Y = veado ;
        X = lince,
        Y = veado ;
        X = planta_carnivora,
        Y = mosca ;
        X = veado,
        Y = planta_carnivora.
*/

/* d) Escreva as seguintes regras:
    carnívoro(X) = quem como animal
    herbívoro(X) = come planta e não come animal
    predador(X) = é carnívoro e também é animal
    presa(X) = é quem é comido por predador e também é animal
    caçado(X) = caçado é quem é presa
    pertence_a_cadeia(X,Y) =X pertence a cadeia alimentar de Y
 */
carnivoro(X) :- come(X, Y) , animal(Y).
herbivoro(X) :- come(X, Y) , planta(Y) , \+ animal(Y).
predador(X) :- carnivoro(X) , animal(X).
presa(X) :- come(Y, X) , predador(Y) , animal(X).
cacado(X) :- presa(X).

pertence_a_cadeia(X, Y) :- come(Y, X).
pertence_a_cadeia(X, Y) :- come(Y, W) , pertence_a_cadeia(X, W).