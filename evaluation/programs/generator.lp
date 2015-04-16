time(0..n).

% the gene X is equal to Val from T1 to T2 (no change)
obs2(X,Val,T1,T2) :- obs(X,Val,T1), obs(X,Val,T2), T1<T2,
not exists(X,Val,T1,T2).

% X takes a value different from Val between T1 and T2
exists(X,Val,T1,T2) :- obs(X,Val_,T), time(T), T>T1, T<T2, Val_!=Val, process(X,Val_), process(X,Val), time(T1;T2).

%The gene Z changes to value Valz2 at T2
change(Z,Valz2,T2) :- action(Y,Valy,Z,Valz1,Valz2), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), T2=T1+1.
change(Z,Valz2,T2) :- action(Y,Valy,Z,Valz1,Valz2,D), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), time(D;T1;T2), T2=T1+D.
change(Z,Valz2,T2) :- action(X,Valx,Y,Valy,Z,Valz1,Valz2,D), obs2(X,Valx,T1,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), time(D;T1;T2), T2=T1+D.

change(X,T) :- change(X,_,T).

% obs(Variable,Value,Time): true if the Variable has this Value at Time.
% {
obs(X,Val,T+1) :- obs(X,Val,T), not change(X,T), time(T).
obs(X,Valx,T) :- change(X, Valx, T-1), time(T).
obs(X,Valx,T) :- change(X, Valx, T), time(T).
% }

obs(X, Valx, T1,T2) :- obs(X,Valx,T1), change(X,_,T1), change(X,_,T2), T1 < T2, not exists(X,Valx,T1,T2).

obs(X, Valx, T1,T2) :- obs(X,Valx,T1), change(X,_,T1), T2=n, T1 < T2, not exists(X,Valx,T1,T2).

obs(X, Valx, T1,T2) :- obs(X,Valx,T1), change(X,_,T2), T1=0, T1 < T2, not exists(X,Valx,T1,T2).

obs(X, Valx, T1,T2) :- obs(X,Valx,T1), T1=0, T2=n, not exists(X,Valx,T1,T2).

% Initial State
%obs(X,1,0) :- process(X,_). % Fixed

obs(X,Val,0) :- init(actifProcess(X,Val)). % Given

% influences
existInfluence(X,Y) :- action(Y,_,X,_,_).

#hide.
%#show obs2/4.
%#show change/3.
#show obs/4.
#show existInfluence/2.
