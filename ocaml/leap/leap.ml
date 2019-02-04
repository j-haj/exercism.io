let leap_year year =
  match year with
    _ when year mod 400 = 0 -> true
  | _ when year mod 100 = 0 -> false
  | _ when year mod 4 = 0 -> true
  | _ -> false
                         
             
    
