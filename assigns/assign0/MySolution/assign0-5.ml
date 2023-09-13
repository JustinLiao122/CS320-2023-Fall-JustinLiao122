let stringrev cs =
  let len = String.length cs in

  let rec reverse str i =
    if i < 0 then
      str
    else
      reverse (str ^ (String.make 1 cs.[i])) (i - 1)
    in

    reverse "" (len-1)