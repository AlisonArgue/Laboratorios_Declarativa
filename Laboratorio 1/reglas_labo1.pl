
:- consult('hechos_labo1.pl').

% Llevan ambas armas (pistola y cuchillo)
ambas_armas(X):-
    arma(X, pistola),
    arma(X, cuchillo).

% Los que aparecen en la isla o en el castillo
aparecen_isla_castillo(X):-
    aparece(X, castillo);
    aparece(X, isla).

% Personajes que aparecen en zonas preligrosas altas
personas_zonas_alta(X):-
    aparece(X, L),
    dificultad(L, alta).

% Personajes zona peligrosa muy alta
personas_zonas_muy_altas(X):-
    aparece(X, L),
    dificultad(L, muy_alta).
