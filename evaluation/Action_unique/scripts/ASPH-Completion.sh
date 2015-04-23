#!/bin/bash

# /**
# * Infer action to complete a Process Hitting network represented in ASP
# * $1: observation file location
# * $2: time length to consider
# * $3: Maximal indegree of the action inferred
# */

observations=$1
time=$2
indegree=$3

indegree_actions_file="indegree_action.tmp"

./../programs/ASPH-Completion_indegree_extension.sh $indegree > $indegree_actions_file
wait

./../programs/clingo 1 ../programs/ASPH-Completion_base.lp $indegree_actions_file $observations --const n=$time
wait

rm $indegree_actions_file
