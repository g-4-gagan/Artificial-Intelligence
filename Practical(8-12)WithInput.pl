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

/*Practical 9
Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.*/
conc([],L,L).
conc([X|L1],L2,[X|L3]):-
	conc(L1,L2,L3).
concatenate:-
	write("Enter First List: "),
	read(L1),
	write("Enter Second List: "),
	read(L2),
	conc(L1,L2,L3),
	write("The concatenated list is: "),
	write(L3),!.