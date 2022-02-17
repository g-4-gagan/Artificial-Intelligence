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

/*Practical 3
Write a program in PROLOG to implement factorial (N, F) where F represents thefactorial of a number N.*/
factorial(0,1).
factorial(N,F) :-
    N > 0,
    N1 is N-1,
    factorial(N1,Result1),
    F is Result1*N.
factorial:-
	write("Enter number to find factorial: "),
	read(X),
	factorial(X,F),
	write("The factorial of "),write(X),
	write(" is: "),write(F),!.


/*Practical 4
Write a program in PROLOG to implement generate_fib(N,T) where T represents theNth term of the fibonacci series.*/
generate_fib(1,0).
generate_fib(2,1).
generate_fib(N,T):-
	N1 is N-1,
	generate_fib(N1,T1),
	N2 is N-2,
	generate_fib(N2,T2),
	T is T1+T2.
fibonacci:-
	write("Enter the fibonacci term you want: "),
	read(X),
	generate_fib(X,F),
	write("The number at "),write(X),
	write(" in fibonacci series is: "),write(F),!.
	