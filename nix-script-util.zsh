#!/usr/bin/env zsh

# Pad echo output with line breaks

echo_br_bottom() {
  echo $1; echo
}

echo_br_top() {
  echo; echo $1
}

echo_br_both() {
  echo; echo $1; echo
}

# Annotate functions and stages of scripts

fn_call() {
  for fn in "$@"; do
    echo_br_bottom "Function $fn has started..."
    $fn
    echo_br_bottom "Function $fn has completed!"
  done
}

echo_stage_status() {
  if [ "$1" -eq "0" ]; then
    echo_br_bottom "Starting $2 stage...";
  fi 

  if [ "$1" -eq "1" ]; then; 
    echo_br_bottom "$2 stage has completed!";
  fi 
}
