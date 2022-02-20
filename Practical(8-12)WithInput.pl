/*Practical 8
Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.*/
memb(X,[X|T]).
memb(X,[H|T]):-
	memb(X,T).
member:-
	write("Enter the List: "),
	read(L),
	write("Enter the number to be found: "),
	read(X),
	write(X),
	(memb(X,L)->
	write(" is the member of the given list")
	;write(" is not the member of the given list")),!.
