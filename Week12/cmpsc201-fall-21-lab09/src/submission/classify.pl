% Prolog classify program
mylen([],0).
mylen([_|T],S) :- mylen(T,R), S is R+1.
classify(S, X) :- mylen(X,R), 0 is mod(R, 2) -> S = 0; S = 1.
seq([5,6,1,8,3,7]).
main :- seq(SEQ), classify(S, SEQ), write(S), nl, halt.
:- initialization(main).
