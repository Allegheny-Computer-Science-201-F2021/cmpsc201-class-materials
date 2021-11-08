% Prolog sum program
classify(S, X) :- length(X, R), 0 is mod(R, 2) -> S = 0; S = 1.
seq([5,6,1,8,3,7,9]).
main :- seq(SEQ), classify(S, SEQ), write(S), nl, halt.
:- initialization(main).
