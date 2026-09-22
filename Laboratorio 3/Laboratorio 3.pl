
% Ejercicio:
% Dado un número N, se debe sumar N con todos los números anteriores
% hasta llegar a 1.
sumatoria(1, 1).
sumatoria(X, Y) :-
    X > 1, N is X - 1,
    sumatoria(N, R),
    Y is X + R.
