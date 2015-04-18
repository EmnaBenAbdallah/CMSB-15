#!/bin/bash

# /**
# * Infer action to complete a Process Hitting network represented in ASP
# * $1: input Process Hiting file location
# * $2: time length to consider
# * $3: Maximal indegree of the action considered
# */

input=$1
time=$2
indegree=$3

indegree_generation_file="indegree_generation.tmp"

./../programs/ASPH-Generation_indegree_extension.sh $indegree > $indegree_generation_file
wait

./../programs/clingo 1 ../programs/ASPH-Generation_base.lp $indegree_generation_file $input --asp09 --const n=$time
wait

rm $indegree_generation_file
