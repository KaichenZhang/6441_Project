%% C. Constantinides, 2012.

likes(noodles, deborah).
likes(max, deborah).
likes(deborah, noodles).
should_marry(X, Y):- likes(X, Y), likes(Y, X).