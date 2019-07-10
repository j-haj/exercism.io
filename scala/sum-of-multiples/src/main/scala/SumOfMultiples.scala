object SumOfMultiples {
  def sum(factors: Set[Int], limit: Int): Int = {
    (0 until limit).foldLeft(0) { (acc, x) =>
      if (factors.exists((n) => x % n == 0)) acc + x
      else acc
    }
  }
}

