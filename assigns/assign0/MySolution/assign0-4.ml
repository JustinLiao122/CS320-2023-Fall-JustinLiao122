let str2int cs =
  let rec aux acc i =
    if i < 0 then acc
    else
      let digit = int_of_char cs.[i] - int_of_char '0' in
      aux (acc + (digit * int_of_float (10.0 ** float_of_int (String.length cs - 1 - i)))) (i-1)
    in
    aux 0 (String.length cs - 1)