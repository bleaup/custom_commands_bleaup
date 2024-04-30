#!/bin/bash

### ZSHRC COMMANDS ###
######################
#update zshrc file
function updt() {
  source ~/.zshrc  
}

### ELIXIR COMMANDS ###
#######################
# runs the project
function run() {
  iex -S mix phx.server
}

# runs the project with mps enabled
function mps_run() {
  MPS_ENABLED=true iex -S mix phx.server
}

### GIT COMMANDS ###

# it calls git status
function gs() {
  git status
}

#it calls git add
function ga() {
  git add $1
}

#it calls git push
function gps() {
  git push
}

#it calls git commit -m 
function gct () {
  git commit -m $1
}

#it calls git add all and git commit  in one command
function gac () {
    git add .
    git commit -m $1
}

# it calls git pull
function gpl() {
  git pull
}

#it calls git diff
function gd() {
  git diff
}

# it returns to main branch
function main() {
  git checkout main
}

# runs git checkout
function gch() {
  git checkout $1
}

# calls git fetch
function gf() {
  git fetch
}

function diff() {
    git log --pretty=format:"%h - %an: %s" v0.1.$1..v0.1.$2
}

function pj_diff() {
  git log --pretty=format:"%Cgreen%<(135,trunc)%s%n%Cblue    >> %<(18,trunc)%an | %as, %Cred %h [%<(10,trunc)%(describe:tags=true)]%n" v0.1.$1..v0.1.$2
}

function py_run() {
  if [ $1 = "main" ]
  then
    python schedule_builder.py
  elif [ $1 = "test" ]
  then
    python schedule_builder_test.py
  elif [ $1 = "formatter" ]
  then
    python main_PJ_unified.py
  elif [ $1 = "Kate" ]
  then
    echo "Mom"
  elif [ $1 = "Francisco" ]
  then
    echo "Dad"
  else
    echo "Invalid File Name"
  fi
}