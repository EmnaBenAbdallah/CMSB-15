% Trouver les actions unaires à partir des observations déscrétisées
% Delay des action est la moyenne des délais de la même action

time(0..n).
val(0..n).
changeState(X,0) :- process(X,_).

exists(X,Val,T1,T2) :- obs(X,Val_,T), time(T), T>T1, T<T2, Val_!=Val, process(X,Val_), process(X,Val), time(T1;T2).


%{changeState(X,Val1, Val2, T)} :- obs(X,Val1,T), obs(X,Val2,T), Val1!=Val2, obs(X,Val1,T-1).
changeState(X,Val1, Val2, T) :- obs(X,Val1,_,T), obs(X,Val2,T,_), Val1!=Val2.
changeState(X,T) :- changeState(X,_,_,T).
changeState(T) :- changeState(X,T).

%:- 2{changeState(_,_,_,T2)}, time(T2).

%action(Y,Valy,X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), existInfluence(X,Y), time(D;T1;T2), changeState(_,T1), T2=T1+D, not exists_change(T1,T2).
action(Y,Valy,X,Val1,Val2,D) :- changeState(T5), not exists_change(T5,T), T>T5, % T5 is the last change (now is T)
D=T-T5, % Delay since last change
obs(X,Val1,T1,T), changeState(X,Val1,Val2,T), T5>=T1,  % X has Val1 since last change (T5) and change now (T)
obs(Y,Valy,T3,T4), T3<=T5, T4>=T, % Y has ValY since last change (T5)
existInfluence(X,Y),
time(D;T1;T;T3;T4;T5).


exists_change(T1,T2) :- changeState(T), T1<T, T<T2, time(T;T1;T2).


#hide.
%#show changeState/4.
%#show changeState/2.
%#show obs/4.
%#show obs2/4.
%#show exists/4.
#show action/6.
%#show k/1.
%#show actionDelay/4.
%#show nbreTotAction/4.
%#show sumDelays/8.
%#show exists_change/2.

