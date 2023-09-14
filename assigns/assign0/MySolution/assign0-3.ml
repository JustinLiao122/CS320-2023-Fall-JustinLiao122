




let chr = Char.chr
let ord = Char.code
let str(c0) = String.make 1 c0
;;
let string_init = String.init
let string_length = String.length
let string_get(cs, i0) = String.get cs i0 

let add_char_helper c s i = if i = 0 then c else string_get(s, i-1)

let add_char_to_string (c : char) (s : string) : string =
  string_init (1 + (string_length s)) (add_char_helper c s)

(* let add_char_to_string (c : char) (s : string) : string =
  string_init (1 + (string_length s)) (fun i -> if i = 0 then c else string_get(s, i-1)) *)

(* def init(n, f):
  s = ''
  for i in range(n):
    s += f(i)
  return s
 *)
let digit_of_int i =  chr (i + (ord '0'))

let int2str(i0: int): string = 
  if i0 = 0 then "0" else 
  let rec helperint2str (i) (acc): string =
    if i = 0 then acc 
    else helperint2str (i/10)  (add_char_to_string(digit_of_int (i mod 10))(acc))   
  in helperint2str i0 "" 




    




