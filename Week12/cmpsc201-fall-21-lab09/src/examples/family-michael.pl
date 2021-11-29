:- initialization(main).
male(bob).
male(adam).
male(byron).
male(mark).
male(bell).
male(charles).
male(edwards).
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
female(cathy).
female(maria).
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
parent(adam, ashley).
parent(adam, charles).
parent(adam, edwards).
parent(anita, ashley).
parent(anita, charles).
parent(anita, edwards).
parent(byron, peter).
parent(byron, cathy).
parent(byron, maria).
parent(diane, peter).
parent(diane, cathy).
parent(diane, maria).
parent(mark, steve).
parent(mark, rick).
parent(mark, sussie).
parent(cindy, steve).
parent(cindy, rick).
parent(cindy, sussie).
parent(bell, thomas).
parent(bell, gurlin).
parent(bell, haeley).
parent(sarah, thomas).
parent(sarah, gurlin).
parent(sarah, haeley).

grandmother(GM, C):-
	mother(C, P),
	parent(P, GM).

granddad(GS, C):-
	dad(C, P),
	parent(P, GS).

brother(B,C):-
	male(C),
	mother(P,C),	
	mother(P,B),
	C \= B.
sister(S,C):-
	female(C),
	mother(P,C),	
	mother(P,S),
	C \= S.

uncle(U,C):-
	dad(P,U),
	brother(P,C).

aunt(A,C):-
	dad(P,A),
	sister(P,C).


nephew(N,C):-
	male(C),
	uncle(C, N).

neice(N,C):-
	female(C),
	uncle(C, N).


mother(M,C):-
	female(M),
	parent(M, C).

dad(D,C):-
	male(D),
	parent(D, C).

daughter(P,C):-
	female(C),
    parent(P, C).

son(P,C):-
	male(C),
    parent(P, C).

main :- forall(brother(byron, Who),(write(brother(byron, Who):Who), nl)),
		forall(sister(peter, Who),(write(sister(peter, Who):Who), nl)),
		forall(uncle(peter, Who),(write(uncle(peter, Who):Who), nl)),
		forall(nephew(adam, Who),(write(nephew(adam, Who):Who), nl)),
		forall(neice(adam, Who),(write(neice(adam, Who):Who), nl)),
		forall(aunt(peter, Who),(write(aunt(peter, Who):Who), nl)).


		
