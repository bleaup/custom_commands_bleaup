#!/bin/bash

### ZSHRC COMMANDS ###
# updates zshrc file
function updt() {
  source ~/.zshrc  
}

### ELIXIR COMMANDS ###
# runs the project
function run() {
  iex -S mix phx.server
}

# runs the project with mps enabled
function mps_run() {
  MPS_ENABLED=true iex -S mix phx.server
}

### GIT COMMANDS ###
# calls git status
function gs() {
  git status
}

# calls git add
function ga() {
  git add $1
}

# calls git push
function gps() {
  git push
}

# calls git commit -m 
function gct () {
  git commit -m $1
}

# calls git add all and git commit  in one command
function gac () {
    git add .
    git commit -m $1
}

# calls git add all, git commit, and git push in one command
function gacps () {
    git add .
    git commit -m $1
    git push
}

# calls git pull
function gpl() {
  git pull
}

# calls git diff
function gd() {
  git diff
}

# checks out main branch
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

# calls "plain" diff from initial version to latest
function diff() {
    git log --pretty=format:"%h - %an: %s" v0.1.$1..v0.1.$2
}

# calls "pj" diff from initial version to latest
function pj_diff() {
  git log --pretty=format:"%Cgreen%<(135,trunc)%s%n%Cblue    >> %<(18,trunc)%an | %as, %Cred %h [%<(10,trunc)%(describe:tags=true)]%n" v0.1.$1..v0.1.$2
}

### PYTHON COMMANDS ###
# runs given python script
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