:- initialization(main).
pasc(N, 0, 1) :- !.
pasc(N, N, 1) :- !.
pasc(N, K, F) :-
        N > 1,
        N1 is N-1,
        K1 is K-1,
        pasc(N1, K1, F1),
        pasc(N1, K, F2),
        F is F1+F2.
main :- forall(pasc(5, 2, X),(write(X), nl)).
