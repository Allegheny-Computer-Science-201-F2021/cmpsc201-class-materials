:- initialization(main).
teach('Alice', 'c1').
teach('Ben', 'c2').
teach('Charles', 'c3').
teach('David', 'c4').
teach('Edward', 'c5').
registered('Amber', 'c1').
registered('Amber', 'c2').
registered('Amber', 'c5').
registered('Bettie', 'c2').
registered('Clement', 'c3').
registered('Dan', 'c4').
registered('Edward', 'c5').
class(Teacher, Student):-
	teach(Teacher, CourseID),
	registered(Student, CourseID).
query(teach('Ben', 'c1')).
query(teach('Amber', 'c1')).
query(class('David', 'Dan')).
main :- forall(query(Q), (Q -> write(Q:'yes'),nl ; write(Q:'no'),nl)),
		forall(registered('Amber', X),(write(X), nl)).

