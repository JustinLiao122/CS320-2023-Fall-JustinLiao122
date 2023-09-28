let string_sepjoin_list sep xs =
  let rec join acc = function
    | [] -> acc
    | [x] -> acc ^ x
    | x :: xs -> join (acc ^ x ^ sep) xs
  in
  join "" xs
;;