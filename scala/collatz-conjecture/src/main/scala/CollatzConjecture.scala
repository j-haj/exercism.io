object CollatzConjecture {
  def steps(n: Int): Option[Int] = {
    def loop(n: Int, acc: Int): Option[Int] = {
      if (n == 1) {
        Some(acc)
      } else if (n <= 0 ) None
      else if (n % 2 == 0) loop(n/2, acc+1)
      else loop(3*n + 1, acc+1)
    }
    loop(n, 0)
  }
}
