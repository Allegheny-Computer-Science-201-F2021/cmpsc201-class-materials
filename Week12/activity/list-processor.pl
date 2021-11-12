% Prolog identify the tail node
end(R, [X]) :- R is X. 
end(S, [_|T]) :- end(R, T), S is R.
seq([5,6,1,8,3,7]).
main :- seq(SEQ), end(S, SEQ), write(S), nl, halt.
:- initialization(main).
