% ADD YOUR CODE HERE

:- initialization(main).
male(bob).  
male(adam).
male(byron).
male(mark).
male(bell).
male(edwards).
male(charles).
male(peter).
male(steve).
male(rick).
male(thomas).
male(gurlin).
female(mary).
female(anita).
female(diane).
female(cindy).
female(sarah).
female(ashley).
female(maria).
female(cathy).
female(sussie).
female(haeley).
parent(bob, adam).
parent(bob, byron).
parent(bob, cindy).
parent(bob, sarah).
parent(mary, adam).
parent(mary, byron).
parent(mary, cindy).
parent(mary, sarah).
parent(anita, ashley). 
parent(anita, edwards).
parent(anita, charles).
parent(adam, ashley).
parent(adam, edwards).
parent(adam, charles).
parent(byron, peter).
parent(byron, maria).
parent(byron, cathy).
parent(diane, peter).
parent(diane, maria).
parent(diane, cathy).
parent(cindy, rick).
parent(cindy, sussie).
parent(cindy, steve).
parent(mark, rick).
parent(mark, sussie).
parent(mark, steve).
parent(sarah, gurlin).
parent(sarah, haeley).
parent(sarah, thomas).
parent(bell, gurlin).
parent(bell, haeley).
parent(bell, thomas).
grandmother(GM, C):-  
    mother(GM, P),  
    parent(P, C).  
grandfather(GF, C):-
    father(GF, P),
    parent(P, C).
mother(M,C):-  
	female(M),  
    parent(M, C). 
father(F, C):-
    male(F),
    parent(F, C).
sister(S, P):-
    female(S),
    parent(R, S),
    parent(R, P). %same parent
brother(B, P):-
    male(B),
    parent(R, B),
    parent(R, P).
uncle(U, C):-
    male(U),
    parent(Parent, C),
    brother(U, Parent).
granddaughter(GD, GP):-
    female(GD),
    parent(P, GD),
    parent(GP, P).
grandson(GS, GP):-
    male(GS),
    parent(P, GS),
    parent(GP, P).
son(P,C):-  
	male(C),  
    parent(P, C). 
daughter(P,C):-  
	female(C),  
    parent(P, C). 
nephew(N, P):-
    male(N),
    grandmother(R, N), %find the grandparent
    parent(R, P). %all children of grandparent
neice(N, P):-
    female(N),
    grandmother(R, N),
    parent(R, P).

main :- forall(grandmother(mary, Who),(write(Who:grandmother(mary)), nl)),
		forall(grandfather(bob, Who),(write(Who:grandfather(bob)), nl)),
		forall(mother(cindy, Who),(write(Who:mother(cindy)), nl)),
		forall(father(byron, Who),(write(Who:father(byron)), nl)),
		forall(sister(cindy, Who),(write(Who:sister(cindy)), nl)),
		forall(brother(adam, Who),(write(Who:brother(adam)), nl)),
		forall(uncle(peter, Who),(write(Who:uncle(peter)), nl)),
		forall(granddaughter(cathy, Who),(write(Who:granddaughter(cathy)), nl)),
		forall(grandson(charles,Who),(write(Who:grandson(charles)), nl)),
		forall(son(steve, Who),(write(Who:son(steve)), nl)),
		forall(daughter(maria, Who),(write(Who:daughter(maria)), nl)),
		forall(nephew(rick, Who),(write(Who:nephew(rick)), nl)),
		forall(neice(haeley, Who),(write(Who:neice(haeley)), nl)).

