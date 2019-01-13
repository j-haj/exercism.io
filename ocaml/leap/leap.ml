let leap_year year =
  let is_mod_4 = year mod 4 == 0 in
  let is_mod_100 = year mod 100 == 0 in
  let is_mod_400 = year mod 400 == 0 in
  match year with
    _ when is_mod_4 && is_mod_100 && is_mod_400 -> true
  | _ when is_mod_4 && is_mod_100 -> false
  | _ when is_mod_4 -> true
  | _ -> false
                         
             
    
