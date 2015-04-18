%/**
% * ASPH-Chronogram: Targetenerate a chronogram of the gene evolution of a Process Hitting
% */

%------------
% FACTS
%------------

	time(0..n).
	val(0..n).

	% influences
	existInfluence(Hitter_1,Target) :- action(Hitter_1,_,Target,_,_).

%-------------
% Observers
%-------------

	% @brief: is true if the active process of @Sort is @Proc for each time step between @T1 and @T2 
	% obs1(Sort, Process, Time, Time)
	% {
		obs1(Sort,Proc,0,1) :- init(actifProcess(Sort,Proc)). % Initial state

		obs1(Sort, Proc, T1,T2) :- obs1(Sort,Proc,T1,T2-1), not change(Sort,T2-1), time(T1;T2).

		obs1(Sort, Proc, T1,T2) :- change(Sort,Proc,T1), T2=T1+1, time(T1;T2).
	% }
	
	% @brief: is true if a gene change occurs at @T (gene @Target if specified)
	% change(Sort*,Time)
	% {
		change(Sort,T) :- change(Sort,_,T).
		
		change(T) :- change(_,T).
	% }

%------------
% Predicates
%------------

	% @brief: the gene @Target changes to value @Proc at time step @T
	% change(Sort,Process,Time)
	% {
		{change(Target,Proc_,T)} :- action(Hitter_1,Proc_1,Target,Proc,Proc_,D),
		obs1(Hitter_1,Proc_1,Th1,T), Th1 <= T-D, % Each hitters @Sortn and @Target has the corresponding value since @D unit of time
		obs1(Target, Proc,Tt,T), Tt <= T-D, 
		time(T;Th1;Tt;D).
	% }


	% @brief: is true if an action is applicable at @T
	% should_change(Time)
	% {
		should_change(T) :- action(Hitter_1,Proc_1,Target,Proc,Proc_,D),
		obs1(Hitter_1,Proc_1,Th1,T), Th1 <= T-D,
		obs1(Target, Proc,Tt,T), Tt <= T-D, 
		time(T;Th1;Tt;D).
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
		obs(Sort, Proc, T1, Tmax) :- Tmax=#max[ obs1(Sort, Proc, T1, T2) : time(T2) : val(T2) = T2 ], obs1(Sort, Proc, T1, _).
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
	%#show change/3.
	%#show obs1/4.
	%#show action/8.
