:- initialization(main).
male(bob).
male(charles).
male(edwards).
male(adam).
male(byron).
male(peter).
male(mark).
male(steve).
male(rick).
male(bell).
male(thomas).
male(gurlin).

female(mary).
female(ashley).
female(anita).
female(diane).
female(cathy).
female(maria).
female(cindy).
female(sussie).
female(sarah).
female(haeley).

parent(bob, adam).
parent(mary, adam).
parent(bob, cindy).
parent(mary, cindy).
parent(bob, byron).
parent(mary, byron).
parent(bob, sarah).
parent(mary, sarah).

parent(adam, ashley).
parent(anita, ashley).
parent(adam, charles).
parent(anita, charles).
parent(adam, edwards).
parent(anita, edwards).

parent(byron, peter).
parent(diane, peter).
parent(byron, cathy).
parent(diane, cathy).
parent(byron, maria).
parent(diane, maria).

parent(mark, steve).
parent(cindy, steve).
parent(mark, rick).
parent(cindy, rick).
parent(mark, sussie).
parent(cindy, sussie).

parent(sarah, thomas).
parent(bell, thomas).
parent(sarah, gurlin).
parent(bell, gurlin).
parent(sarah, haeley).
parent(bell, haeley).


sibling(adam, byron).
sibling(adam, cindy).
sibling(adam, sarah).
sibling(byron, cindy).
sibling(byron, sarah).
sibling(byron, adam).
sibling(cindy, sarah).
sibling(cindy, byron).
sibling(cindy, adam).

sibling(ashley, charles).
sibling(ashley, edwards).
sibling(charles, ashley).
sibling(charles, edwards).
sibling(edwards, ashley).
sibling(edwards, charles).

sibling(peter, cathy).
sibling(peter, maria).
sibling(cathy, peter).
sibling(cathy, maria).
sibling(maria, peter).
sibling(maria, cathy).

sibling(steve, rick).
sibling(steve, sussie).
sibling(rick, steve).
sibling(rick, sussie).
sibling(sussie, rick).
sibling(sussie, steve).

sibling(thomas, gurlin).
sibling(thomas, haeley).
sibling(gurlin, thomas).
sibling(gurlin, haeley).
sibling(haeley, thomas).
sibling(haeley, gurlin).

    grandmother(C, GM):-
        female(GM),
        parent(GM,P),
        parent(P, C).
    granddad(C, GD):-
        male(GD),
        parent(GD,P),
        parent(P, C).
    mother(C, M):-
        female(M),
        parent(M,C).
    dad(C, D):-
        male(D),
        parent(D,C).
    son(P,C):-
	    male(C),
        parent(P, C).

    daughter(P,C):-
	    female(C),
        parent(P, C).

    sister(X,Y):-
        female(Y),
        sibling(X,Y).

    brother(X,Y):-
        male(Y),
        sibling(X,Y).

    uncle(X,Y):-
        male(Y),
        sibling(Y,Z),
        parent(Z,X).
        

    granddaughter(C,GD):-
        female(GD),
        parent(C,P),
        parent(P, GD).

     grandson(C,GS):-
        male(GS),
        parent(C,P),
        parent(P, GS).
        
    %grandson(C,DS):-

    %nephew(C, P):-

    neice(C,N):-
        female(N),
        sibling(C,X),
        parent(X,N).

    nephew(C,M):-
        male(M),
        sibling(C,X),
        parent(X,M).


    main :-
            forall(grandmother(peter, Who),(write(grandmother(peter):Who), nl)),
            forall(granddad(maria, Who),(write(granddad(maria):Who), nl)),
            forall(mother(cindy, Who),(write(mother(cindy):Who), nl)),
            forall(dad(adam, Who),(write(dad(adam):Who), nl)),
            forall(brother(adam, Who), (write(brother(adam):Who), nl)),
		    forall(sister(byron, Who),(write(sister(byron):Who), nl)),
		    forall(son(adam, Who), (write(son(adam):Who), nl)),
		    forall(daughter(adam, Who), (write(daughter(adam):Who), nl)),
            forall(uncle(rick, Who),(write(uncle(rick):Who), nl)),
            forall(granddaughter(bob, Who), (write(granddaughter(bob):Who), nl)),
            forall(grandson(bob, Who), (write(grandson(bob):Who), nl)),
            forall(neice(adam, Who), (write(neice(adam):Who), nl)).
            
