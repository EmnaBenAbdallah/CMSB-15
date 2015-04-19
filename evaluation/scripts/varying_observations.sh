#!/bin/bash

observations="observations.txt"
clingo_output="results/data/varying_observations_answer_sets.txt"
time_output="results/data/varying_observations_performances.txt"

echo -n "" > $observations
echo -n "" > $clingo_output
echo -n "" > $time_output

echo "#obs runtime" > $time_output

for i in {57..58}
do
	
	echo "------------------------------" >> $clingo_output
	echo "$i observations:" >> $clingo_output
	echo "" >> $clingo_output
	wait
	./ASPH-Generation.sh ../benchmarks/circadian.lp $i 2 > $observations
	wait
	echo -n "$i " >> $time_output
	wait
	T="$(date +%s%N)"
	wait
	./ASPH-Completion.sh $observations $i 2 >> $clingo_output
	wait
	# Time interval in nanoseconds
	T="$(($(date +%s%N)-T))"
	# Seconds
	S="$((T/1000000000))"
	# Milliseconds
	M="$((T/1000000))"
	
	echo "$S.$M" >> $time_output
	echo "------------------------------" >> $clingo_output
done

exit
