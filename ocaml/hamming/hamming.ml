type nucleotide = A | C | G | T
let hamming_distance (xs : nucleotide list) (ys : nucleotide list) =
  if (List.length xs) <> (List.length ys) then None
  else Some (List.fold_left2 (fun a x y -> if x = y then a else a + 1) 0 xs ys)
  
