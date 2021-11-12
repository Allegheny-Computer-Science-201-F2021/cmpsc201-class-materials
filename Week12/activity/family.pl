:- initialization(main).
male(harry).  
male(peter).  
female(chas).
male(bob).
female(alice).
female(liz).  
parent(phil, bob). 
parent(phil, chas).  
parent(liz, chas).  
parent(chas,harry).  
parent(chas,alice).  
parent(chas,peter).
grandmother(GM, C):-  
mother(GM, P),  
parent(P, C).  
mother(M,C):-  % rules
	female(M),  
    parent(M, C). 
son(P,C):-  % rules
	male(C),  
    parent(P, C). 
daughter(P,C):-  % rules
	female(C),  
    parent(P, C). 
rone(X,Y) :- female(X), parent(Z,X), parent(Z,Y), X \= Y.
rtwo(X,Y) :- rone(Z,X), parent(Z,Y).
main :- forall(son(chas, Who),(write(Who:son(chas)), nl)),
		forall(grandmother(liz, Who),(write(Who:grandmother(liz)), nl)),
		forall(rtwo(bob,Who),(write(Who:rtwo(bob)), nl)).

