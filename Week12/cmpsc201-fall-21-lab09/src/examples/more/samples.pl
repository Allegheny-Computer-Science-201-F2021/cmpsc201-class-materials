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





(query2(Q2), (Q2 -> write(yes:Q2) ; write(no:Q2))),
(write('\n')),
(query3(Q3), (Q3 -> write(yes:Q3) ; write(no:Q3))),
(write('\n')).


:- initialization(main).
teaches(Alice, c1).
teaches(Bob, c2).
teaches(Charles, c3).
teaches(David, c4).
teaches(Erik, c5).
query(teaches(Alice, c2)).
main :- (query(Q), (Q -> write(yes:Q) ; write(no:Q))).
	


:- initialization(main).
main :- write('Hello World!').

:- initialization(main).
main :- 
	write('Hello World!\n'),
	write('Hello World!').


:- initialization(main).
dog(john, c1).
dog(john, c2).
dog(john, c3).
dog(ben, c2).
main :- forall(dog(john, X),(write(X), nl)).



:- initialization(main).
teach(John, c1).
teach(Ben, c2).
teach(Charles, c3).
teach(David, c4).
teach(Edward, c2).
query(teach(ben, c2)).
main :- (query(Q), (Q -> write(yes:Q) ; write(no:Q))).



:- initialization(main).
dog(john, c1).
dog(ben, c2).
query1(dog(john, c2)).
query2(dog(ben, c2)).
main :- (query1(Q1), (Q1 -> write(yes:Q1) ; write(no:Q1))),
		(write('\n')),
		(query2(Q2), (Q2 -> write(yes:Q2) ; write(no:Q2))),
		(write('\n')).



:- initialization(main).
male(harry).  
female(wills).
female(liz).  
parent(phil, chas).  
parent(liz, chas).  
parent(chas,harry).  
parent(chas,wills).  
grandmother(GM, C):-  
mother(GM, P),  
parent(P, C).  
mother(M,C):-  
	female(M),  
    parent(M, C). 
son(P,C):-  
	male(C),  
    parent(P, C). 
daughter(P,C):-  
	female(C),  
    parent(P, C). 
main :- forall(daughter(chas, Who),(write(Who:daughter(chas, Who)), nl)),
		forall(grandmother(liz, Who),(write(Who), nl)).

