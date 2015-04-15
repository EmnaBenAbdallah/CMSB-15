% Trouver les actions à partir des observations déscrétisées
% Delay des action est la moyenne des délais de la même action

process("L",0..1).
process("PC",0..1).
process("G",0..1).

sort(X) :- process(X,_).

time(0..n).
val(0..n).
changeState("G",0).



obs(X,Val,T) :- obs(X, Val, T1,T2), T>=T1, T<=T2, process(X,Val), time(T).

%obs2(X,Val,T1,T2) :- obs(X,Val,T1,T2), T1<T2, not obs(Y,Val_,T), Val_!=Val, time(T), T>=T1, T<=T2, process(X,Val_).

obs2(X,Val,T1,T2) :- obs(X,Val,T1), obs(X,Val,T2), T1<T2,
not exists(X,Val,T1,T2).
%not changeState(X,T), time(T), T>=T1, T<=T2, process(X,_).
%not changeState(Y,T), time(T), process(Y,_), Y!=X.

exists(X,Val,T1,T2) :- obs(X,Val_,T), time(T), T>T1, T<T2, Val_!=Val, process(X,Val_), process(X,Val), time(T1;T2).

%changeState(Y,T), T>=T1, T<=T2, time(T), Y=X.

changeState(X,Val1, Val2, T) :- obs(X,Val1,T), obs(X,Val2,T), Val1!=Val2, obs(X,Val1,T-1).
changeState(X,T) :- changeState(X,_,_,T).
changeState(T) :- changeState(X,T).

%obs(Var, Val, Duree) :- obs(Var, Val, T1), obs(Var, Val, T2), not obs(Var, Val_, T3), Val != Val_, .

action1(Y,Valy,Z,Valz,X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz,T1,T2), existInfluence(X,Y), existInfluence(X,Z), Y!=Z, time(D;T1;T2), changeState(_,T1), T2=T1+D.

%auto_action(X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), existInfluence(X,X), time(D;T1;T2), changeState(_,T1), T2=T1+D.
%, not action1(Y,Valy,Z,Valz,X,Val1,Val2,D1), D1<D, time(D1). % , process(Y,Valy), process(Z,Valz).

action(A,Vala,B,Valb,X,Val1x,Val2x,D1) :- action2(A,Vala,B,Valb,X,Val1x,Val2x,D1), action2(C,Valc,D,Vald,Y,Val1y,Val2y,D2), A=D, Vala=Vald, B=C, Valb=Valc, D1=D2, X=Y, Val1x=Val1y, Val2x=Val2y, not action(B,Valb,A,Vala,X,Val1x,Val2x,D1).

%action1(Y,Valy,Z,Valz,X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz,T1,T2), Y="L", Z="PC", X="G", time(D;T1;T2), changeState(_,T1), T2=T1+D.

%{actionDelay(X,Val1,Val2,D):action1(Y,Valy,Z,Valz,X,Val1,Val2,D)}:- process(X,Val1), process(Y,Valy), process(Z,Valz), process(X,Val2).

% Plural actions average
nbreTotAction(Y,Valy,Z,Valz,Val1,Val2,X,NA) :- NA={action1(Y,Valy,Z,Valz,X,Val1,Val2,_)}, process(X,Val1), process(Y,Valy), process(Z,Valz), process(X,Val2), NA!=0.

sumDelays(Y,Valy,Z,Valz,X,Val1,Val2,H) :- H=#sum[ action1(Y,Valy,Z,Valz,X,Val1,Val2,D) : time(D) : val(D) = D ], action1(Y,Valy,Z,Valz,X,Val1,Val2,_), H!=0.

action2(Y,Valy,Z,Valz,X,Val1,Val2,DM) :- nbreTotAction(Y,Valy,Z,Valz,Val1,Val2,X,NA), sumDelays(Y,Valy,Z,Valz,X,Val1,Val2,H), DM=H/NA.

% unary actions average
%nbreTotAction(X,Val1,Val1,Val2,X,NA) :- NA={auto_action(X,Val1,Val2,_)}, process(X,Val1), process(X,Val2), NA!=0.

%sumDelays(X,Val1,X,Val1,Val2,H) :- H=#sum[ auto_action(X,Val1,Val2,D) : time(D) : val(D) = D ], auto_action(X,Val1,Val2,_), H!=0.

%action2(X,Val1,X,Val1,Val2,DM) :- nbreTotAction(X,Val1,Val1,Val2,X,NA), sumDelays(X,Val1,X,Val1,Val2,H), DM=H/NA.


#hide.
%#show changeState/4.
%#show changeState/2.
%#show obs2/4.
%#show exists/4.
#show action/8.
%#show auto_action/4.
%#show k/1.
%#show actionDelay/4.
%#show nbreTotAction/4.
%#show sumDelays/8.


