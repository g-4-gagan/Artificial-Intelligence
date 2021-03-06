sum(X,Y,R):-
	R is X+Y.

%max of two numbers
max(X,Y,Z) :-
    (  X =< Y
    -> Z = Y
    ;  Z = X
     ).

%lists in prolog

%member of list
member(X,[X|T]).
member(X,[H|T]):-member(X,T).

%list concatenation
conc([],L,L).
conc([X|L1],L2,[X|L3]):-
	conc(L1,L2,L3).

%length of list
length_list([],0).
length_list([_|T],N):-
	length_list(T,N1),
	N is N1+1.

