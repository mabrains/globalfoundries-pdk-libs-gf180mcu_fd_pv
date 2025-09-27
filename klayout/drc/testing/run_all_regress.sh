#!/bin/bash -f


all_tables=$(ls -1 ../rule_decks/ | sed 's/.drc//g' | egrep -v "(main|layers_def|tail)")

for t in $all_tables
do
  echo "Running Table: $t"
  python3 run_regression.py --table_name=$t --run_dir=./${t}_regr
done
