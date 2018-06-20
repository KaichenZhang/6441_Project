% Author: C. Constantinides
% Date: 04-Aug-15

member(X, [X|_]) :- !.
member(X, [_|T]) :- member(X, T).