%% C. Constantinides, 2009.

edge(a,b).
edge(b,c).
edge(a,c).
edge(c,d).
edge(d,e).
edge(f,e).
edge(f,g).
path(N1, N2) :- edge(N1, N2).
path(N1, N2) :- edge(N1, N), path(N, N2).
is-connected(N1, N2) :- path(N1, N2).