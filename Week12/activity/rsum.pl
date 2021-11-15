:- initialization(main).
rsum(0, 0).
rsum(N, F) :-
        N > 0,
        N1 is N-1,
        rsum(N1, F1),
        F is N+F1.
main :- forall(rsum(5, X),(write(X), nl)).

