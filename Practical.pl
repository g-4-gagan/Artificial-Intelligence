/*Practical 1
Write a prolog program to calculate the sum of two numbers.*/
sum(X,Y,R):-
	R is X+Y.

/*Practical 2
Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.*/
max(X,Y,M):-
	X>Y,
	M=X.

max(X,Y,M):-
	Y>=X,
	M=Y.

