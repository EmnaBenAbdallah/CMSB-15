#!/bin/bash

observations="observations.txt"

values=( metazoan_flat-ASP ERBB_G1-S_flat-ASP tcrsig40_flat-ASP tcrsig94_flat-ASP egfr104_flat-ASP )

for i in { }
do
	echo -n "" > "$observations"
	echo -n "" > "results/data/$benchmark  _answer_sets.txt"
	echo "#obs runtime" > "results/data/$benchmark  _run_time"

done

for i in {1..100}
do
	
	# metazoan
	echo "------------------------------" >> "Metazoan_$clingo_output"
	echo "$i observations:" >> "Metazoan_$clingo_output"
	echo "" >> "Metazoan_$clingo_output"
	wait
	./clingo 0 programs/generator.lp programs/benchmarks/metazoan_flat-ASP.lp --const n=$i --asp09 > $observations
	wait
	echo -n "$i " >> "Metazoan_$time_output"
	wait
	T="$(date +%s%N)"
	wait
	./clingo 1 programs/completion_avg.lp observations.txt --const n=$i >> "Metazoan_$clingo_output"
	wait
	# Time interval in nanoseconds
	T="$(($(date +%s%N)-T))"
	# Seconds
	S="$((T/1000000000))"
	# Milliseconds
	M="$((T/1000000))"
	
	echo "$S.$M" >> "Metazoan_$time_output"
	echo "------------------------------" >> "Metazoan_$clingo_output"
done

exit
