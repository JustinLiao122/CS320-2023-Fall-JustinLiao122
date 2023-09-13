
(*
Assign0-2: 10 points
Please implement a function that tests whether
a given natural number is a prime:
fun isPrime(n0: int): bool
*)

let isPrime n0 =
  if n0 < 2 then false
  else
    let rec is_not_divisor d =
      d * d > n0 || (n0 mod d <> 0 && is_not_divisor (d + 1))
    in
    is_not_divisor 2