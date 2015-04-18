process("L",0..1).
process("PC",0..1).
process("G",0..1).
time(0..48).
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

action(Y,Valy,Z,Valz,X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz,T1,T2), Y="L", Z="G", X="PC", time(D;T1;T2), changeState(_,T1), T2=T1+D.
%, not action(Y,Valy,Z,Valz,X,Val1,Val2,D1), D1<D, time(D1). % , process(Y,Valy), process(Z,Valz).


action(Y,Valy,Z,Valz,X,Val1,Val2,D) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz,T1,T2), Y="L", Z="PC", X="G", time(D;T1;T2), changeState(_,T1), T2=T1+D.

%action(Y,Valy,Z,Valz,X,Val1,Val2,D,T1,T2) :- obs2(X,Val1,T1,T2), changeState(X,Val1,Val2,T2), obs2(Y,Valy,T1,T2), obs2(Z, Valz,T1,T2), Y="PC", Z="L", X="G", not changeState(T_), T_<T2, T_>T1, time(T_;T2;D), T2=T1+D.

#hide.
%#show changeState/4.
%#show changeState/2.
%#show obs2/4.
%#show exists/4.
#show action/8.


