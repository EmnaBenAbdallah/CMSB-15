%/**
% * ASPH-Completion: Complete a Process Hitting by generating action from observation of genes evolutions
% */

%------------
% FACTS
%------------
	time(0..n).
	val(0..n).

	% Generate a first change at initial state
	changeState(X,0) :- process(X,_).

%-------------
% Observers
%-------------

	% TODO: Useless !! not changeState is enougth
	% @brief: is true if there is a gene change between time @T1 and @T2
	% exists_change(Time,Time)
	% {
		exists_change(T1,T2) :- changeState(T), T1<T, T<T2, time(T;T1;T2).
	% }

	% @brief: is true if @X takes another value than @Val between @T1 and @T2
	% exists(Sort, Process, Time, Time) 
	% {
		exists(X,Val,T1,T2) :- obs(X,Val_,T), time(T), T>T1, T<T2, Val_!=Val, process(X,Val_), process(X,Val), time(T1;T2).
	% }

	% @brief: Capture the genes changes
	% changeState(Sort*, Process*, Process*, Time)
	% {
		changeState(X,Val1, Val2, T) :- obs(X,Val1,_,T), obs(X,Val2,T,_), Val1!=Val2.
		changeState(X,T) :- changeState(X,_,_,T).
		changeState(T) :- changeState(X,T).
	% }
	
	last_changeState(T,T_) :- changeState(T), changeState(T_), T > T_, not not_last_changeState(T,T_).
	not_last_changeState(T,T_) :- changeState(T), changeState(T_), changeState(T__), T_ < T__, T__ < T, time(T;T_;T__).

%------------
% Predicates
%------------

	% @brief: is true if the action can be applies to perform the change that occurs at @T
	% applicable_action(Sort, Process, Sort, Process, Process, Time)
	% {
		applicable_action(Hitter_1,Proc_1,Target,Proc,Proc_,D) :- changeState(Target,Proc,Proc_,T), % @Target changes from process @Proc to @Proc_ at time step @T
		last_changeState(T,T-D), % No concurent action
		obs(Target,Proc,T1,T), T1<=T-D, % active process of @Target is @Proc since at least @D time steps
		obs(Hitter_1,Proc_1,T1_H1,T2_H1), T1_H1<=T-D, T2_H1>=T, % active process of @Hitter_1 is @P_1 since at least @D time step
		existInfluence(Hitter_1,Target),
		time(D;T1;T;T1_H1;T2_H2), D > 0.
	% }
	
	% @brief: is true if the action can be applies at a time step where there is no change
	% consistent_action(Sort, Process, Sort, Process, Process, Time)
	% {
		unconsistent_action(Hitter_1,Proc_1,Target,Proc,Proc_,D) :- applicable_action(Hitter_1,Proc_1,Target,Proc,Proc_,D),
		not changeState(T),
		obs(Target,Proc,T1,T2), T1<=T-D, T2>=T, % active process of @Target is @Proc since at least @D time steps
		obs(Hitter_1,Proc_1,T1_H1,T2_H1), T1_H1<=T-D, T2_H1>=T, % active process of @Hitter_1 is @P_1 since at least @D time step
		time(D;T1;T;T1_H1;T2_H2).
	% }
	
	% @brief: is true if a change occurs each time the action can be applies
	% consistent_action(Sort, Process, Sort, Process, Process, Time)
	% {
		consistent_action(Hitter_1,Proc_1,Target,Proc,Proc_,D) :- applicable_action(Hitter_1,Proc_1,Target,Proc,Proc_,D),
		not unconsistent_action(Hitter_1,Proc_1,Target,Proc,Proc_,D).
	% }
	
	% @brief: output actions
	% action(Sort, Process, Sort, Process, Process, Time)
	% {
		action(Hitter_1,Proc_1,Target,Proc,Proc_,D) :- consistent_action(Hitter_1,Proc_1,Target,Proc,Proc_,D).
	% }
%------------
% Output
%------------

	% @brief: all actions that can be applied to make the changes observed
	#hide.
	#show action/6.

	% DEBUG
	%#show applicable_action/6.
	%#show unconsistent_action/6.
	%#show consistent_action/6.
