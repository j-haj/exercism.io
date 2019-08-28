object Bob {
  def isQuestion(statement: String): Boolean = statement.takeRight(1) == "?"
  def isShouted(statement: String): Boolean = {
    // x.isLetter => x.isUpper AND statement contains a letter
    statement.foldRight(true) ((x: Char, y: Boolean) => (!x.isLetter || x.isUpper) && y) &&
    statement.foldRight(false) (_.isLetter || _)
  }
  def isNothing(statement: String): Boolean = (statement == "") || (statement.foldRight(true) (!_.isLetterOrDigit && _))

  def response(statement: String): String = {
    val s = statement.trim
    if (isQuestion(s) && isShouted(s)) "Calm down, I know what I'm doing!"    
    else if (isQuestion(s)) "Sure."
    else if (isNothing(s)) "Fine. Be that way!"
    else if (isShouted(s)) "Whoa, chill out!"
    else "Whatever."
  }
}
