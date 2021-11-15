% reading input using command line argument
:- initialization(main).
getArgs(Argument0, Argument1) :-
  current_prolog_flag(argv, Argv),
  nth0(0, Argv, Argument0), % get first argument
  nth0(1, Argv, Argument1). % get second argument  
main:- getArgs(L1,L2), write(L1), nl, write(L2), nl,halt.   
       