%% C. Constantinides, 2009.

is-contained(X, [X|_]).
is-contained(X, [_|T]) :- is-contained(X,T).