/*Practical 1
Write a prolog program to calculate the sum of two numbers.*/
sum:-
	write("Enter First number: "),
	read(X),
	write("Enter Second number"),
	read(Y),
	Z is X+Y,
	write("Sum of "),write(X),
	write(" and "),write(Y),
	write(" is "),write(Z),
	nl, cont.

cont:-
	write("Do you want to do some more sum(y/n)? "),
  	read(X),
	check(X).

check(y):-
	sum.

check(n):-
	!.

check(X):-
	write("Please choose right choice "),
	nl,cont.

/*Practical 2
Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.*/
max:-
	write("Enter First number: "),
	read(X),
	write("Enter Second number"),
	read(Y),
	(  X =< Y
    	-> Z = Y
    	;  Z = X
     	),write("Maximum between "),write(X),
	write(" and "),write(Y),
	write(" is "),write(Z),
	!.
	