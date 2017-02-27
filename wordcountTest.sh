#!/bin/bash
p=wc_out`date +%s`
directory=/tmp/$p
echo "Launching MapReduce WordCount on huuuuuuuuuuuuuuuuge file"
yarn jar ~/wordcount.jar /tmp/huuuuuuuuuuuuuge $directory
echo "Job completed.... copying results here"
hdfs dfs -copyToLocal $directory .
echo "Results: "
sort -nrk2 $p/* | less
