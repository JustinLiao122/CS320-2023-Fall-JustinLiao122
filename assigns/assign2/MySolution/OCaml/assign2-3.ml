let rec
foldleft_to_iforeach
(foldleft: ('xs, 'x0, int) foldleft): ('xs, 'x0) iforeach =
  fun xs x0 fopr -> 
    let r0 = x0 in
    let _ = foldleft xs r0 (fun r1 x1 -> let _ = fopr r1 x1 in ()) in
    ()
;;