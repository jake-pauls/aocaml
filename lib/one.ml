open Core

let file_contents = Utils.read_file "data/one.txt"

let rec group input result =
  match input with
  | [] -> result
  | "" :: t -> group t (0 :: result)
  | h :: t ->
      group t
        (match result with
        | [] -> [ int_of_string h ]
        | hd :: tl -> (hd + int_of_string h) :: tl)

(** [first_k k lst] Searches for the first k values in a given list *)
let rec first_k k lst =
  match lst with
  | [] -> [] 
  | h :: t -> if k = 1 then [ h ] else h :: first_k (k - 1) t

let run : unit =
  let inputs = group file_contents [] in
  let sorted = List.rev (List.sort ~compare inputs) in
  let top_three = first_k 3 sorted in
  let summation = Utils.sum top_three in
  print_endline (string_of_int summation)
