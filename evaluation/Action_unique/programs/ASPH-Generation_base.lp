%/**
% * ASPH-Chronogram: Targetenerate a chronogram of the gene evolution of a Process Hitting
% */

%------------
% FACTS
%------------

	time(0..n).
	val(0..n).
	
	change(Sort,Proc,0) :- init(actifProcess(Sort,Proc)).
	%change(Sort,-1,n) :- process(Sort,_).

	% influences
	existInfluence(Hitter_1,Target) :- action(Hitter_1,_,Target,_,_).

%-------------
% Observers
%-------------

	% @brief: is true if the active process of @Sort is @Proc for each time step between @T1 and @T2 
	% obs1(Sort, Process, Time, Time)
	% {
		%obs1(Sort,Proc,0) :- init(actifProcess(Sort,Proc)). % Initial state

		obs1(Sort, Proc, T) :- change(Sort,Proc,T).
		
		obs1(Sort, Proc, T) :- clock(Sort,Proc,T).
		
		obs1(Sort, Proc, T) :- change(T), not change(Sort,T), obs1(Sort,Proc,T1), last_change(T,T1), time(T;T1).
	% }
	
	last_change(T,T_) :- change(T), change(T_), T > T_, not not_last_change(T,T_).
	not_last_change(T,T_) :- change(T), change(T_), change(T__), T_ < T__, T__ < T, time(T;T_;T__).
	
	% @brief: is true if a gene change occurs at @T (gene @Target if specified)
	% change(Sort*,Time)
	% {
		change(Sort,T) :- change(Sort,_,T).
		
		change(T) :- change(_,T).
	% }
	
	% @brief: is true if the temporised sort @Sort change to @Proc at @Time
	% clock(Sort,Proc,Time)
	% {
		clock(Sort,Proc_,T+D) :- temporised(Sort), action(Sort,Proc,Proc_,D),
		change(Sort,T),
		obs1(Sort, Proc,T),
		time(T;T+D).
	% }
	
%------------
% Predicates
%------------

	% @brief: the gene @Target changes to value @Proc at time step @T
	% change(Sort,Process,Time)
	% {
		change(Sort,Proc,T) :- clock(Sort,Proc,T).
	
		{change(Target,Proc_,T+D)} :- action(Hitter_1,Proc_1,Target,Proc,Proc_,D),
		change(T),
		obs1(Hitter_1,Proc_1,T), % Each hitters @Hitter_n and the @Target has the corresponding value since @D unit of time
		obs1(Target, Proc,T),
		not change(T_), T < T_, T_ < T+D,
		time(T;T;T_;D).
		
		{change(Target,Proc_,T+D)} :- action(Hitter_1,Proc_1,Hitter_2,Proc_2,Target,Proc,Proc_,D),
		change(T),
		obs1(Hitter_1,Proc_1,T), % Each hitters @Hitter_n and the @Target has the corresponding value since @D unit of time
		obs1(Hitter_2,Proc_2,T),
		obs1(Target, Proc,T),
		not change(T_), T < T_, T_ < T+D,
		time(T;T;T_;D;T+D).
		
		{change(Target,Proc_,T+1)} :- action(Hitter_1,Proc_1,Target,Proc,Proc_),
		change(T),
		obs1(Hitter_1,Proc_1,T), % Each hitters @Hitter_n and the @Target has the corresponding value since @D unit of time
		obs1(Target, Proc,T),
		time(T;T;T_).
	% }


	% @brief: is true if an action is applicable at @T
	% should_change(Time)
	% {
		should_change(T+D) :- action(Hitter_1,Proc_1,Target,Proc,Proc_,D),
		change(T),
		obs1(Hitter_1,Proc_1,T), % Each hitters @Hitter_n and the @Target has the corresponding value since @D unit of time
		obs1(Target, Proc,T),
		not change(T_), T < T_, T_ < T+D,
		time(T;T;T_;D).
		
		should_change(T+D) :- action(Hitter_1,Proc_1,Hitter_2,Proc_2,Target,Proc,Proc_,D),
		change(T),
		obs1(Hitter_1,Proc_1,T), % Each hitters @Hitter_n and the @Target has the corresponding value since @D unit of time
		obs1(Hitter_2,Proc_2,T),
		obs1(Target, Proc,T),
		not change(T_), T < T_, T_ < T+D,
		time(T;T;T_;D;T+D).
		
		should_change(T+1) :- action(Hitter_1,Proc_1,Target,Proc,Proc_),
		change(T),
		obs1(Hitter_1,Proc_1,T), % Each hitters @Hitter_n and the @Target has the corresponding value since @D unit of time
		obs1(Target, Proc,T),
		time(T;T;T_).
	% }

%-------------
% Constraints
%-------------

	% @brief: Atmost one gene change per time step (Asynchronicity)
	:- 2{change(T)}, time(T).

	% @brief: A change has to occur if an action is applicable
	:- should_change(T), not change(T), time(T).

	% @brief: is true if the active process of @Sort is @Proc for each time step of the interval [@T1,@Tmax] and the interval is maximal 
	% obs(Sort, Process, Time, Time)
	% {
		obs(Sort, Proc, T1, T2) :- change(Sort,Proc,T1), change(Sort,Proc_,T2), Proc != Proc_, T1 < T2, not has_change(Sort,T1,T2), time(T1;T2;T3).
		obs(Sort, Proc, T1, n) :- change(Sort,Proc,T1), not has_change(Sort,T1,n), time(T1;T3). 
		%Tmax=#max[ obs1(Sort, Proc, T1, T2) : time(T2) : val(T2) = T2 ], obs1(Sort, Proc, T1, _).
		
		has_change(Sort,T1,T2) :- change(Sort,Proc,T1), change(Sort,Proc_,T3), Proc != Proc_, T1 < T3, T3 < T2, time(T1;T2;T3).
	% }

%------------
% Output
%------------

	% @brief: all sort/process, the sorts influences and the active process intervals
	#hide.
	#show obs/4.
	#show existInfluence/2.
	#show process/2.

	% DEBUTarget
	%#show clock/3.
	%#show last_change/2.
	%#show should_change/1.
	%#show change/3.
	%#show change/2.
	%#show change/1.
	%#show action/8.
	%#show obs1/3.
	%#show action/8.
