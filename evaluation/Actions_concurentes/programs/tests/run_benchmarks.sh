#!/bin/bash

observations="observations.txt"
echo -n "" > "$observations"

values=( metazoan_flat-ASP.lp TH-tadpole-tail-applati.lp ERBB_G1-S_flat-ASP.lp tcrsig40_flat-ASP.lp tcrsig94_flat-ASP.lp egfr104_flat-ASP.lp TH-tadpole-tail-applati.lp )

for benchmark in "${values[@]}";
do
	clingo_output="results/data/$benchmark _answer_sets.txt"
	time_output="results/data/$benchmark _run_time.txt"
	echo -n "" > "$clingo_output"
	echo "#obs runtime" > "$time_output"
done


for i in {1..10000}
do
	
	for benchmark in "${values[@]}";
	do
		clingo_output="results/data/$benchmark _answer_sets.txt"
		time_output="results/data/$benchmark _run_time.txt"
	
		echo "------------------------------" >> "$clingo_output"
		echo "$i observations:" >> "$clingo_output"
		echo "" >> "$clingo_output"
		wait
		./clingo 1 programs/generator.lp benchmarks/$benchmark --const n=$i --asp09 > "$observations"
		wait
		echo -n "$i " >> "$time_output"
		wait
		T="$(date +%s%N)"
		wait
		./clingo 1 programs/completion-unary.lp $observations --const n=$i >> "$clingo_output"
		wait
		# Time interval in nanoseconds
		T="$(($(date +%s%N)-T))"
		# Seconds
		S="$((T/1000000000))"
		# Milliseconds
		M="$((T/1000000))"
	
		echo "$S.$M" >> "$time_output"
		echo "------------------------------" >> "$clingo_output"
	done
done

exit
