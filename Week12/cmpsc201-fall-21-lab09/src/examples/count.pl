% Prolog calculate list size program
list_len([],0).
list_len([_|T],N) :- list_len(T,N1), N is N1+1.
seq([5,6,1,8,3,7]).
main :- seq(SEQ), list_len(SEQ,S), write(S), nl, halt.
:- initialization(main).
