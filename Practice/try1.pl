%First Try Program (single line comment)

/*
make the pile of features and place each at same place
make rules using the features given and then consult
to ask questions.
*/

% Parent fact
parent(bob,pam).
parent(luna,pam).
parent(pam,tom).
parent(jenny,tom).

%male fact
male(bob).
male(pam).
male(tom).

%female fact
female(luna).
female(jenny).

%husband rule
husband(X,Y):-
	parent(X,Z),
	parent(Y,Z),
	male(X).

%wife rule
wife(X,Y):-
	parent(X,Z),
	parent(Y,Z),
	female(X).

%rule father
father(X,Y):-
	parent(X,Y),male(X).

%rule mother
mother(X,Y):-
	parent(X,Y),female(X).

