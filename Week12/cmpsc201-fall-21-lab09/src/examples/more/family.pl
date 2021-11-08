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

