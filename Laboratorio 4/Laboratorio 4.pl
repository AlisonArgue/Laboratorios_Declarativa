% Descomponer un valor entero y hacerlo una lista dígito por dígito

almacenar(0, []):- !.

almacenar(N, [N]):-
    N =< 9,
    !.

almacenar(N, [H|T]):-
    N >= 10,
    % guarda residuo de div entre 10 en H
    H is N mod 10,
    N1 is N // 10,
    almacenar(N1, T).
