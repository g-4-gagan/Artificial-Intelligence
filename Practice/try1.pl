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
parent(pam,ron).
parent(jenny,ron).
parent(jack,perry).
parent(dua,perry).
parent(jack,pammy).
parent(dua,pammy).
parent(tom,daya).
parent(perry,daya).
parent(tom,shawn).
parent(perry,shawn).
parent(pammy,john).
parent(roch,john).

%male fact
male(bob).
male(pam).
male(tom).
male(ron).
male(jack).
male(shawn).
male(roch).
male(john).

%female fact
female(luna).
female(jenny).
female(dua).
female(pammy).
female(perry).
female(daya).

%spouse fact
spouse(bob,luna).
spouse(pam,jenny).
spouse(tom,perry).
spouse(jack,dua).
spouse(pammy,roch).

%spouse rule
spouse(X,Y):-
	spouse(Y,X).

%husband rule
husband(X,Y):-
	/*parent(X,Z),
	parent(Y,Z),
	male(X),
	X\=Y.*/
	wife(Y,X).

%wife rule
wife(X,Y):-
	parent(X,Z),
	parent(Y,Z),
	female(X).
	%husband(Y,X).

%child rule
child(X,Y):-
	parent(Y,X).

%son rule
son(X,Y):-
	parent(Y,X),
	male(X).

%daughter rule
daughter(X,Y):-
	parent(Y,X),
	female(Y).

%father rule
father(X,Y):-
	parent(X,Y),male(X).

%mother rule
mother(X,Y):-
	parent(X,Y),female(X).

