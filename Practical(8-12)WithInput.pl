/*Practical 8
Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.*/
memb(X,[X|T]).
memb(X,[H|T]):-
	memb(X,T).
member:-.
