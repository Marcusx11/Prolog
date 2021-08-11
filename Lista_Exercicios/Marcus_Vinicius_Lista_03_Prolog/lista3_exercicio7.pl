/* 7) Implementar um programa que determina se um determinado dia faz parte de
um dia da semana ou final de semana. Note que a determinação de uma
categoria já exclui a possibilidade de que o elemento pertença a outra
categoria, ou seja, não existe um dia que seja semana e final de semana.
Assim, você pode usar o comando de corte. */

dia(segunda).
dia(terca).
dia(quarta).
dia(quinta).
dia(sexta).
dia(sabado).
dia(domingo).

isFinalDeSemana(X) :- dia(X) , (X = sabado , ! ; X = domingo , !).