open Solutions

let () =
  print_endline "aocaml";

  let res = One.add 2 3 in
  print_endline (string_of_int res);

  let res2 = One.sub 3 2 in
  print_endline (string_of_int res2)
