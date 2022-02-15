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
	