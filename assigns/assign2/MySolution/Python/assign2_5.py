from MyPython import * 



def fnlist_make_fwork(fwork):
  res = []

  def work(x):
    nonlocal res
    res.append(x)
  
  fwork(work)
 
  return fnlist_cons(res[0], res)
