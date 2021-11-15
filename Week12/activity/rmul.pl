:- initialization(main).
rmul(0, 1).
rmul(N, F) :-
        N > 0,
        N1 is N-1,
        rmul(N1, F1),
        F is N*F1.
main :- forall(rmul(5, X),(write(X), nl)).

