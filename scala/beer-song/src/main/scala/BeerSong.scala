object BeerSong {
  def recite(n: Int, depth: Int): String = {
    def phrase(n: Int): String =  n match {
        case 0 => ("No more bottles of beer on the wall, "
            + "no more bottles of beer.\n"
            + "Go to the store and buy some more, "
            + "99 bottles of beer on the wall.\n")
        case 1 => ("1 bottle of beer on the wall, "
            + "1 bottle of beer.\n"
            + "Take it down and pass it around, "
            + "no more bottles of beer on the wall.\n")
        case n => (s"$n bottles of beer on the wall, "
            + s"$n bottles of beer.\n"
            + "Take one down and pass it around, "
            + s"${n-1} ${if (n > 2) "bottles" else "bottle"} "
            + "of beer on the wall.\n")
      
    }

    @annotation.tailrec
    def loop(n: Int, depth: Int, acc: StringBuilder): String = {
      if (depth == 0) acc.toString
      else loop(n-1, depth-1, acc ++= "\n" ++=  phrase(n))
    }

    loop(n-1, depth-1, new StringBuilder(phrase(n)))
  }
}
