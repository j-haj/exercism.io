object Twofer {
  def twofer(name: String): String = {
    s"One for ${if (name.isEmpty) "you" else name}, one for me"
  }
}
