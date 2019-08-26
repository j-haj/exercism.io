object MatchingBrackets {
  def isPaired(s : String) : Boolean = {
    var stack = Vector[Char]()
    val flipped = Map('}' -> '{', ')' -> '(', ']' -> '[')
    s.foreach((c: Char) =>
      c match {
        case '[' | '{' | '(' => stack = stack :+ c
        case ']' | '}' | ')' => 
          if (stack.last != flipped(c)) return false else stack = stack.dropRight(1)
      }
    )
    true
  }
}
