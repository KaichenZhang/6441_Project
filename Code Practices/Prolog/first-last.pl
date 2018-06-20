% Author:
% Date: 9/23/2009

first(F, [F|_]).

last(L, [L]).
last(L, [H|T]) :- last(L, T).

add(X, L, [X|L]).

c([H|T], H, T).
