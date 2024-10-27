#!/bin/bash

echo "the git push for $(date)" 
sleep 2

echo "the below changes were made"
sleep 3
git status 
sleep 2

echo "please enter the name of the file to commit OR . for all"
sleep 2

read file1

git add $file1

echo "please enter the name of this commit"
sleep 2

read commit

git commit -m $commit

git push 
