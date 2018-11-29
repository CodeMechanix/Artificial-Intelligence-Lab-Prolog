isnumber(0).
isnumber(s(X)):- isnumber(X).
isequal(X,X):- isnumber(X).
isequal(s(X),s(X)):- isequal(X,X).
lessthanequal(0,X):-isnumber(X).
lessthanequal(s(X),s(X)):-lessthanequal(X,X).
even(0).
odd(1).
even(s(s(X))):- even(X).
odd(s(s(X))):- odd(X).
add(0,X,Y):- isequal(X,Y).
add(X,0,Y):- isequal(X,Y).
add(s(X),Y,s(Z)):-add(X,Y,Z).
time(0,X,0):-isnumber(X).
time(s(X),Y,Z):- add(P,Y,Z),time(X,Y,P).