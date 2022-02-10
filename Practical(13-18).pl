/*Practical 13
Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.*/
evenlength([]).
evenlength([_|T]):-
	oddlength(T).
oddlength([_|T]):-
	evenlength(T).

/*Practical 14
Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is a list and X represents the Nth element of L.*/
nth_element(1, [X|_], X).
nth_element(K,[_|L],X):-
	nth_element(K1,L,X),
	K is K1+1.

/*Practical 15
Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list.*/
maxlist([X],X).
maxlist([H|T],M):- 
	maxlist(T,M1), 
	H<M1 -> M is M1;
	M is H.


