suma(1,1,2).
suma(1,2,3).
suma(1,3,4).
suma(1,4,5).
suma(1,5,6).
suma(1,6,7).
suma(1,7,8).
suma(1,8,9).
suma(1,9,10).

suma(2,1,3).
suma(2,2,4).
suma(2,3,5).
suma(2,4,6).
suma(2,5,7).
suma(2,6,8).
suma(2,7,9).
suma(2,8,10).
suma(2,9,11).

suma(3,1,4).
suma(3,2,5).
suma(3,3,6).
suma(3,4,7).
suma(3,5,8).
suma(3,6,9).
suma(3,7,10).
suma(3,8,11).
suma(3,9,12).

suma(4,1,5).
suma(4,2,6).
suma(4,3,7).
suma(4,4,8).
suma(4,5,9).
suma(4,6,10).
suma(4,7,11).
suma(4,8,12).
suma(4,9,13).

suma(5,1,6).
suma(5,2,7).
suma(5,3,8).
suma(5,4,9).
suma(5,5,10).
suma(5,6,11).
suma(5,7,12).
suma(5,8,13).
suma(5,9,14).

suma(6,1,7).
suma(6,2,8).
suma(6,3,9).
suma(6,4,10).
suma(6,5,11).
suma(6,6,12).
suma(6,7,13).
suma(6,8,14).
suma(6,9,15).

suma(7,1,8).
suma(7,2,9).
suma(7,3,10).
suma(7,4,11).
suma(7,5,12).
suma(7,6,13).
suma(7,7,14).
suma(7,8,15).
suma(7,9,16).

suma(8,1,9).
suma(8,2,10).
suma(8,3,11).
suma(8,4,12).
suma(8,5,13).
suma(8,6,14).
suma(8,7,15).
suma(8,8,16).
suma(8,9,17).

suma(9,1,10).
suma(9,2,11).
suma(9,3,12).
suma(9,4,13).
suma(9,5,14).
suma(9,6,15).
suma(9,7,16).
suma(9,8,17).
suma(9,9,18).

% Comp = Componente
base(CompBase1, CompBase2):-
    between(1, 9, CompBase1),
    between(1, 9, CompBase2),
    CompBase1 \= CompBase2.
    
cima(Cima, CompBase1, CompBase2):-
    between(1, 9, Cima),
    base(CompBase1, CompBase2),
    suma(CompBase1, CompBase2, Cima). 

piramide(Cima1, Cima2, Cima3, Cima4, CompBase1, CompBase2, CompBase3, CompBase4, CompBase5):-
    cima(Cima1, CompBase1, CompBase2),
    cima(Cima2, CompBase2, CompBase3),
    cima(Cima3, CompBase3, CompBase4),
    cima(Cima4, CompBase4, CompBase5),
    Cima1 \= Cima2,
    Cima1 \= Cima3,
    Cima1 \= Cima4,
    Cima2 \= Cima3,
    Cima2 \= Cima4,
    Cima3 \= Cima4,
    CompBase1 \= CompBase3,
    CompBase1 \= CompBase4,
    CompBase1 \= CompBase5,
    CompBase2 \= CompBase4,
    CompBase2 \= CompBase5,
    CompBase3 \= CompBase5,
    Cima1 \= CompBase1,
    Cima1 \= CompBase2,
    Cima1 \= CompBase3,
    Cima1 \= CompBase4,
    Cima1 \= CompBase5,
    Cima2 \= CompBase1,
    Cima2 \= CompBase2,
    Cima2 \= CompBase3,
    Cima2 \= CompBase4,
    Cima2 \= CompBase5,
    Cima3 \= CompBase1,
    Cima3 \= CompBase2,
    Cima3 \= CompBase3,
    Cima3 \= CompBase4,
    Cima3 \= CompBase5,
    Cima4 \= CompBase1,
    Cima4 \= CompBase2,
    Cima4 \= CompBase3,
    Cima4 \= CompBase4,
    Cima4 \= CompBase5,
    Cima4 \= CompBase1,
    Cima4 \= CompBase2,
    Cima4 \= CompBase3,
    Cima4 \= CompBase4,
    Cima4 \= CompBase5.
