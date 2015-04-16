% Trouver les actions unaires à partir des observations déscrétisées
% Delay des action est la moyenne des délais de la même action


#const n = 48.  % Le temps

time(0..n).
val(0..n).
changeState("G",0).



obs(X,Val,T) :- obs(X, Val, T1,T2), T>=T1, T<=T2, process(X,Val), time(T).

obs2(X,Val,T1,T2) :- obs(X,Val,T1), obs(X,Val,T2), T1<T2,
not exists(X,Val,T1,T2).

exists(X,Val,T1,T2) :- obs(X,Val_,T), time(T), T>T1, T<T2, Val_!=Val, process(X,Val_), process(X,Val), time(T1;T2).


changeState(X,Val1, Val2, T) :- obs(X,Val1,T), obs(X,Val2,T), Val1!=Val2, obs(X,Val1,T-1).
changeState(X,T) :- changeState(X,_,_,T).
changeState(T) :- changeState(X,T).


action1(Y,Valy,X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), existInfluence(X,Y), time(D;T1;T2), changeState(Y,T1), T2=T1+D.

nbreTotAction(Y,Valy,X,Val1,Val2,NA) :- NA={action1(Y,Valy,X,Val1,Val2,_)}, process(Y,Valy),process(X,Val1), process(X,Val2), NA!=0.

sumDelays(Y,Valy,X,Val1,Val2,H) :- H=#sum[ action1(Y,Valy,X,Val1,Val2,D) : time(D) : val(D) = D ], action1(Y,Valy,X,Val1,Val2,_), H!=0.

action(Y,Valy,X,Val1,Val2,DM) :- nbreTotAction(Y,Valy,X,Val1,Val2,NA), sumDelays(Y,Valy,X,Val1,Val2,H), DM=H/NA.


#hide.
%#show changeState/4.
%#show changeState/2.
%#show obs2/4.
%#show exists/4.
#show action/6.
%#show k/1.
%#show actionDelay/4.
%#show nbreTotAction/4.
%#show sumDelays/8.


