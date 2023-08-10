/*Write a Prolog predicate test/3 that has an item as its first argument and a list as its second argument. Its third argument should be a list of the same length as its second argument, but containing 1 for each item that is exactly the same as the first argument, and 0 for each item that is different. For example:

?- test(a,[a,b,c,a,b,c],X).

X = [1,0,0,1,0,0]?*/

test(A,[HF|LF],[HT|LT]):-
	( A==HF
	->HT=1
	; HT=0
	),test(A,LF,LT),
	!.