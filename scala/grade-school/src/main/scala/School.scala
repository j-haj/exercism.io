import scala.collection.immutable.SortedMap

class School {
  type DB = Map[Int, Seq[String]]
  private var _db: SortedMap[Int, Seq[String]] = SortedMap()

  def add(name: String, g: Int) = {
    _db = _db.get(g) match {
      case Some(v) => _db.updated(g, v :+ name)
      case None => _db.updated(g, Seq(name))
    }
  }

  def db: DB = _db.toMap

  def grade(g: Int): Seq[String] = _db.getOrElse(g, Seq())

  def sorted: DB = _db.toMap.map (t => (t._1, t._2.sorted))
}
