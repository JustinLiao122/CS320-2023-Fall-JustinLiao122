#use "./../../assign2.ml";;
#use "./../../MySolution/OCaml/assign2-1.ml";;

let rec
mylist_get_at(xs: 'a mylist)(i0: int): 'a = 
  match xs with
  | MyNil -> mylist_subscript_exn()
  | MyCons(x1, xs) -> 
    if i0 = 0 then x1 else mylist_get_at (xs) (i0-1)
  | MySnoc(xs, x1) -> 
    if i0 = mylist_length(xs: 'a mylist) then x1 else mylist_get_at (xs) (i0)
  | MyReverse(xs) -> 
    mylist_get_at (MyReverse(xs)) (mylist_length(xs)-i0-1)
  | MyAppend2(xs1, xs2) -> 
    let len1 = mylist_length(xs1) in
    if i0 <len1 then mylist_get_at (xs1) (i0) else mylist_get_at (xs2) (i0-len1)