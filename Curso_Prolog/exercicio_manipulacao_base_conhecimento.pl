/* Base de Conhecimento: 
  sala(número, dia, início, fim, disciplina, tipo)
*/

:- dynamic sala/6.

sala(cp1103, segunda, 10, 13, aaa, p).
sala(cp2301, terca, 10, 11, aaa, t).
sala(di011, sabado, 12, 10, xxx, p). % Com erro -> Início está maior que o fim
sala(cp3204, domingo, 8, 10, zzz, p).
sala(di011, sexta, 14, 16, xxx, p).
sala(cp204, sabado, 15, 17, zzz, tp).
sala(di011, quinta, 14, 13, bbb, tp). % Com erro -> Início está maior que o fim
sala(di104, quinta, 9, 10, aaa, tp).
sala(dial, domingo, 14, 16, bbb, t).
sala(cp1220, sabado, 14, 18, sss, p).

/* (sala(_, _, Ini, Fim, _, _ ) , Ini > Fim ) , retractall(sala(_, _, Ini, Fim, _, _)).
    O retractall só irá acontecer se a primeira condição da consulta for verdadeira */