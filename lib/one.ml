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

let rec first_k k lst =
  match lst with
  | [] -> failwith "first_k"
  | h :: t -> if k = 1 then [ h ] else h :: first_k (k - 1) t

(* TODO: Pipe magic??
  let test : unit =
    group file_contents [] 
    |> List.sort ~compare 
    |> List.rev 
    |> first_k 3
    |> Utils.sum 
    |> string_of_int 
    |> print_endline *)

let run : unit =
  let inputs = group file_contents [] in
  let sorted = List.rev (List.sort ~compare inputs) in
  let top_three = first_k 3 sorted in
  let summation = Utils.sum top_three in
  print_endline (string_of_int summation)
