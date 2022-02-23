/*Practical 13
Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.*/
evenlength([]).
evenlength([_|T]):-
	oddlength(T).
oddlength([_|T]):-
	evenlength(T).
evenoddlength:-
	write("Enter the list to be checked: "),
	read(L),
	(evenlength(L)
	->write("The entered list is even length");
	write("The entered list is odd length")),!.

/*Practical 14
Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is a list and X represents the Nth element of L.*/
nth_element(1, [X|_], X).
nth_element(K,[_|L],X):-
	nth_element(K1,L,X),
	K is K1+1.
nth_element:-
	write("Enter the list: "),
	read(L),
	write("Enter the position of the element"),
	read(N),
	nth_element(N,L,X),
	write("The element at position "),
	write(N),write(" in the list is: "),
	write(X),!.