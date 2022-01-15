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

%child rule
child(X,Y):-
	parent(Y,X).

%son rule
son(X,Y):-
	parent(Y,X)
	male(X).

%daughter rule
daughter(X,Y):-
	parent(Y,X)
	female(Y).

%rule father
father(X,Y):-
	parent(X,Y),male(X).

%rule mother
mother(X,Y):-
	parent(X,Y),female(X).

