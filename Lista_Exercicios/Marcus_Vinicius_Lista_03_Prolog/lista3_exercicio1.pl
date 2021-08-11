% 1) Crie uma base de conhecimento com os fatos abaixo:

italiana(pizza).
italiana(calzone).
italiana(lazanha).
mineira(tutu).
mineira(feijoada).
gaucha(churrascada).
uruguaia(churrascada).
argentina(churrascada).
paraguaia(churrascada).

/* a) Crie uma regra com nome "brasileira" para dizer se o prato é típico
brasileiro. Para ser um prato típico ele deve ser da culinária mineira ou
gaúcha. */

brasileiro(Prato) :- (mineira(Prato) , !) ; (gaucha(Prato) , !).

% b) Consulte se lasanha é italiana
/* Resultado: italiana(lazanha).
                true.*/

% c) Consulte se tutu é comida brasileira
/* Resultado: brasileiro(tutu).
                true.*/

% d) Consulte se existe comidas brasileiras
hasBrasileiro(Prato) :- mineira(Prato) ; gaucha(Prato).
/* Resultado: hasBrasileiro(X).
                    X = tutu ;
                    X = feijoada ;
                    X = churrascada.
*/

% e) Consulte se há uma comida que seja brasileira e uruguaia.
isBRandUruguaia(X) :- hasBrasileiro(X) , uruguaia(X).