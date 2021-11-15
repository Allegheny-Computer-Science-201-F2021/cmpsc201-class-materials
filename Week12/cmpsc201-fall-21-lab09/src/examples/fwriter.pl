% writing to files
:- initialization(main).
write:-
    open('output.txt',write,Out),
    write(Out,'Age(Bob,30)\n'),
    write(Out,'Salary(Smith,3500.67).'),
    close(Out). 
main:- write, halt.   