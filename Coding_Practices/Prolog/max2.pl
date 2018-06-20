% Author: C. Constantinides
% Date: 04-Aug-15

% max(X, Y, X) :- X >= Y, !.
% max(X, Y, Y).


max(X, Y, X) :- X >= Y, !.
max(X, Y, Y) :- X < Y.