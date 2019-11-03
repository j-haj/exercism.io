
object Isogram {
	fun isIsogram(word: String): Boolean {
		val s = HashSet<Char>()
		word.toLowerCase()
			.asSequence()
			.filter { it.isLetter() }
			.forEach { if (s.contains(it)) return false
			  else s.add(it)
			}
		return true
	}
}
