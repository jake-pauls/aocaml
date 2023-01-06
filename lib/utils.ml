open Core

(** [read_file file] Simple core util to read a file with the provided filename *)
let read_file file = In_channel.read_lines file

(** [max lst] Returns the maximum comparable a' value in a list *)
let max lst =
  let rec aux lst m =
    match lst with [] -> m | h :: t -> if m > h then aux t m else aux t h
  in
  aux lst 0

(** [sum lst] Returns the summation of an integer list *)
let rec sum = function [] -> 0 | h :: t -> h + sum t
