:- initialization(main).
main:-
   open(data.txt’,read,Str),
   read_data(str,ls),
   close(str),
   write(ls),  nl.
read_data(Stream,[]):-
   at_end_of_stream(Stream).
read_data(Stream,[X|L]):-
   \+  at_end_of_stream(Stream),
   read(Stream,X),
   read_data(Stream,L).

