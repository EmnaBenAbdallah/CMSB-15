#!/bin/bash

# /**
# * Generate ASP predicate to infer action with ASP-Completion_base.lp for each indegree inferior to the one given in argument of the script 
# */

indegree=$1

for (( i=2; i<=indegree; i++ ))
do
	echo "% Indegree $i :"
	echo "% {"

	# applicable_action:
	# {
		# Head
		echo "applicable_action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D) :- changeState(Target,Proc,Proc_,T),"
	
		# Hitter condition
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo "obs(Hitter_$hitter,Proc_$hitter,T1_H$hitter,T2_H$hitter), T1_H$hitter<=T-D, T2_H$hitter>=T,"
		done
	
		# target condition
		echo "obs(Target,Proc,T1,T), T1<=T-D,"
	
		# influences
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo "existInfluence(Hitter_$hitter,Target),"
		done
		
		# Time restriction
		echo -n "time("
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "T1_H$hitter;T2_H$hitter;"
		done
		echo "T1;T;D),"
		
		# Hitter differences
		for (( hitter1=1; hitter1<i; hitter1++ ))
		do
			for (( hitter2=hitter1+1; hitter2<=i; hitter2++ ))
			do
				echo -n "Hitter_$hitter1 != Hitter_$hitter2, "
			done
		done
		
		echo "D > 0."
	# }
	
	echo ""
	
	# unconsistent_action:
	# {
		# Head
		echo "unconsistent_action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D) :- "
		
		# Corresponding action
		echo -n "applicable_action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D),"
		echo "not changeState(T),"
		echo "obs(Target,Proc,T1,T2), T1<=T-D, T2>=T,"
	
		# Hitter condition
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo "obs(Hitter_$hitter,Proc_$hitter,T1_H$hitter,T2_H$hitter), T1_H$hitter<=T-D, T2_H$hitter>=T,"
		done
		
		# Time restriction
		echo -n "time("
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "T1_H$hitter;T2_H$hitter;"
		done
		echo "T1;T;D)."
	# }
	
	echo ""
	
	# consistent_action:
	# {
		# Head
		echo -n "consistent_action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D) :- "
		
		# Corresponding action
		echo -n "applicable_action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D),"
		echo -n "not unconsistent_action("
	
		# Hitter condition
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D)."
	# }
	
	
	
	# action:
	# {
		# Head
		echo -n "action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D) :- "
		
		# Corresponding action
		echo -n "consistent_action("
		
		for (( hitter=1; hitter<=i; hitter++ ))
		do
			echo -n "Hitter_$hitter,Proc_$hitter,"
		done
		
		echo "Target,Proc,Proc_,D)."
	# }
	
	echo "% }"
done

echo "% Output"

for (( i=2; i<=indegree; i++ ))
do
	arg=$(( 4 + 2*$i ))
	echo "#show action/$arg."
done
