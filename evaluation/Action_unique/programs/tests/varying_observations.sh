#!/bin/bash

observations="observations.txt"
clingo_output="results/data/varying_observations_answer_sets.txt"
time_output="results/data/varying_observations_performances.txt"

echo -n "" > $observations
echo -n "" > $clingo_output
echo -n "" > $time_output

echo "#obs runtime" > $time_output

for i in {1..100}
do
	
	echo "------------------------------" >> $clingo_output
	echo "$i observations:" >> $clingo_output
	echo "" >> $clingo_output
	wait
	./clingo 0 programs/generator.lp benchmarks/circadian.lp --const n=$i --asp09 > $observations
	wait
	echo -n "$i " >> $time_output
	wait
	T="$(date +%s%N)"
	wait
	./clingo 1 programs/completion_avg.lp observations.txt --const n=$i >> $clingo_output
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
