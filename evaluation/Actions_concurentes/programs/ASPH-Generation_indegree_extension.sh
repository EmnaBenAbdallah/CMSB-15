#!/bin/bash

# /**
# * Generate ASP predicate to generate a chronogram with ASP-Generator_base.lp for each indegree inferior to the one given in argument of the script 
# */

indegree=$1

for (( i=2; i<=indegree; i++ ))
do
	echo "% Indegree $i :"
	echo "% {"

	# Influences:
	# {
		# Action without delay
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "existInfluence(Hitter,Target) :- action("
			for (( prev=1; prev<hitter; prev++ ))
			do
				echo -n "_,_,"
			done
			echo -n "Hitter,_,"
			for (( after=hitter; after<i; after++ ))
			do
				echo -n "_,_,"
			done
			echo "Target,_,_)."
		done
		
		# Action with delay
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "existInfluence(Hitter,Target) :- action("
			for (( prev=1; prev<hitter; prev++ ))
			do
				echo -n "_,_,"
			done
			echo -n "Hitter,_,"
			for (( after=hitter; after<i; after++ ))
			do
				echo -n "_,_,"
			done
			echo "Target,_,_,_)."
		done
	# }
	
	echo ""

	# Change:
	# {
		echo "{change(Target,Proc_,T)} :-"
		echo -n "action("
	
		# Hitter list
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter$hitter,Proc_$hitter,"
		done
	
		echo "Target,Proc,Proc_,D),"
	
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo "obs1(Hitter$hitter,Proc$hitter,Th$hitter,T), Th$hitter <= T-D,"
		done
		
		echo "obs1(Target, Proc,Tt,T), Tt <= T-D,"
		
		echo -n "time(T;"
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Th$hitter;"
		done
		echo "Tt;D)."
	# }
	
	echo ""
	
	# Should change:
	# {
		echo -n "should_change(T) :- action("
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter$hitter,Proc_$hitter,"
		done
	
		echo "Target,Proc,Proc_,D),"
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo "obs1(Hitter$hitter,Proc$hitter,Th$hitter,T), Th$hitter <= T-D,"
		done
		
		echo "obs1(Target, Proc,Tt,T), Tt <= T-D,"
		
		echo -n "time(T;"
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Th$hitter;"
		done
		echo "Tt;D)."
	# }
	echo "% }"
	echo ""
	
done
