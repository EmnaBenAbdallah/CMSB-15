time(0..n).
val(0..n).

%The gene Z changes to value Valz2 at T2
{change(Z,Valz2,T)} :- action(Y,Valy,Z,Valz1,Valz2), obs1(Y,Valy,_,T), obs1(Z, Valz1,_,T), time(T).
{change(Z,Valz2,T2)} :- action(Y,Valy,Z,Valz1,Valz2,D), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), time(D;T1;T2), T2=T1+D.
{change(Z,Valz2,T2)} :- action(X,Valx,Y,Valy,Z,Valz1,Valz2,D), obs2(X,Valx,T1,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), time(D;T1;T2), T2=T1+D.

change(X,T) :- change(X,_,T).
change(T) :- change(_,T).

:- 2{change(_,_,T2)}, time(T2).
%:- 0{change(Z,Valz2,T2)}0, time(T2), T2>0.

should_change(T) :- action(Y,Valy,Z,Valz1,Valz2), obs1(Y,Valy,_,T), obs1(Z, Valz1,_,T), time(T).
should_change(T2) :- action(Y,Valy,Z,Valz1,Valz2,D), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), time(D;T1;T2), T2=T1+D.
should_change(T2) :- action(Y,Valy,Z,Valz1,Valz2,D), obs2(Y,Valy,T1,T2), obs2(Z, Valz1,T1,T2), T2=T1+D.
:- should_change(T2), not change(T2), time(T2).


%obs1(X, Val, T1,T2) :- change(X,Val,T1), change(X,_,T2), T1 < T2, not change(X,T3), T1 < T3, T3 < T2, time(T1;T2;T3).

%obs1(X, Val, T1,T4) :- obs1(X,Val,T1,T2), not change(X,Val_,T3), Val!=Val_, T1 < T3, T3 < T2, T4 = T2+1, time(T1;T2;T3;T4), process(X,Val), process(X,Val_).

obs1(X, Val, T1,T4) :- obs1(X,Val,T1,T2), not change(X,T2), T4 = T2+1, time(T1;T2;T4).

obs1(X, Val, T1,T2) :- change(X,Val,T1), T2=T1+1, time(T1;T2).


%exists(X,Val,T1,T2) :- obs(X,Val_,T1,T4), T4 >= T1 time(T), T>T1, T<T2, Val_!=Val, process(X,Val_), process(X,Val), time(T1;T2).

% Initial State
%obs1(X,1,0) :- process(X,_). % Fixed

obs1(X,Val,0,1) :- init(actifProcess(X,Val)). % Given

% influences
existInfluence(X,Y) :- action(Y,_,X,_,_).


% Max duration
obs(X, Val, T1, H) :- H=#max[ obs1(X, Val, T1, T2) : time(T2) : val(T2) = T2 ], obs1(X, Val, T1, _).

#hide.
#show obs/4.
#show existInfluence/2.
#show process/2.

% DEBUG
%#show change/3.
%#show obs1/4.
