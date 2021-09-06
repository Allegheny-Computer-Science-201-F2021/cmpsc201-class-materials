even:-
    write('even elements in the list\n').
odd:-
    write('odd elements in the list\n').
classify([H|T]):-
    length(T,M),
    M>=0 ->
    (
        N is mod(M+1,2),
        N=:=0 -> even;odd
    ).
:- initialization(main).
main :- 
classify(['a','b','c','d','e']),
classify(['a','b','c','d','e','f']).



