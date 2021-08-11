/* 2) Verificar se duas listas, uma com a's e outra com b's tem o mesmo número
de elementos. */

listasIguais([a], [b], C1, C2) :- C1 = 1 , C2 = 1.
listasIguais([H1 | T1], [H2 | T2], Cont1, Cont2) :- H1 = a, H2 = b, listasIguais(T1, T2, C1, C2) , (Cont1 is C1 + 1 , Cont2 is C2 + 1)
                                                    , Cont1 =:= Cont2.