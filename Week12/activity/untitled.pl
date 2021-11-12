% Prolog sum program
begin(S, [H|_]) :- S is H.
end(R, [X]) :- R is X.
end(S, [.:|T]) :- end(R, T), S is R.
seq([15,6,1,8,3,17]).
main :- (seq(SEQ), begin(S, SEQ), write(S), nl).		
:- initialization(main).

