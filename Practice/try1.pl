sum(X,Y,R):-
	R is X+Y.

%max of two numbers
max(X,Y,Z) :-
    (  X =< Y
    -> Z = Y
    ;  Z = X
     ).
