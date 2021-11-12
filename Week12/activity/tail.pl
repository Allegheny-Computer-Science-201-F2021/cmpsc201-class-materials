% Prolog identify the tail node
begin(S, [H|_]) :- S is H.
seq([5,6,1,8,3,7]).
main :- seq(SEQ), begin(S, SEQ), write(S), nl, halt.
:- initialization(main).
