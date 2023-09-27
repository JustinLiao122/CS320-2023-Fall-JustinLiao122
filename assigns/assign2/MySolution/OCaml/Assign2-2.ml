let rec
mylist_get_at(xs: 'a mylist)(i0: int): 'a = 
  match xs with
  | MyNil -> mylist_subscript_exn()
  | MyCons(x1, xs) -> 
  | MySnoc(xs, x1) -> mylist_length(xs) + 1
  | MyReverse(xs) -> mylist_length(xs)
  | MyAppend2(xs1, xs2) -> mylist_length(xs1) + mylist_length(xs2)