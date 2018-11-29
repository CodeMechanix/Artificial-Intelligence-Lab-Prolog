Consult('').

/* list summation */
list_add([], 0).
list_add([H | T], TOTAL) :- list_add(T, SUM), TOTAL is H + SUM.

/* detect even */
iseven(0).
iseven(s(s(X))):-iseven(X).

/* detect add */
add(0,X,X):-isnumber(X).
add(s(X),Y,s(Z)):-add(X,Y,Z).

/* list length */
len([],0).
len([H|T],N):-len(T,R),N is R+1.

/* member check */
member(H,[H|T]).
member(X,[H|T]):- member(X,T).

/* list concatenation */ 
concat([],L2,L2).
concat([H|T],L2,[H|L3]):- concat(T,L2,L3).

/* delete element from list */ 
delete(H,[H|T],T).
delete(X,[Y|T],[Y|L1]):- delete(X,T,L1).

/* integer check */
isnumber(0).
isnumber(s(X)):-isnumber(X).

/* equality check */
isequal(X,X):-isnumber(X).
isequal(s(X),s(Y)):-isequal(X,Y).

/* less than or equal */
lessthanequal(0,X):-isnumber(X).
lessthanequal(s(X),s(Y)):-lessthanequal(X,Y).

/* greater than or equal */
greaterthanequal(X,0):-isnumber(X).
greaterthanequal(s(X),s(Y)):-greaterthanequal(X,Y).

/* even check */
iseven(0).
iseven(s(s(X))):-iseven(X).

/* odd check */
isodd(s(0)).
isodd(s(s(X))):-isodd(X).

/* addition */
add(0,X,X):-isnumber(X).
add(s(X),Y,s(Z)):-add(X,Y,Z).