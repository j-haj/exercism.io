
class Anagram(val base: String) {
	val frequencies = HashMap<Char, Int>()
	init {
		base.let {
			if (it.toUpperCase() == it) {
				it
			} else {
				it.toLowerCase()
			}
		}.forEach {
			val c = frequencies.getOrElse(it) { 0 }
			frequencies.put(it, c+1)
		}
	}

	private fun getFrequencyMap(word: String): HashMap<Char, Int> {
		val m = HashMap<Char, Int>()
		word.forEach {
			val c = m.getOrElse(it) { 0 }
			m.put(it, c+1)
		}
		return m
	}

	fun match(words: List<String>): Set<String> {
		return words.filter { frequencies == getFrequencyMap(it.toLowerCase()) }
			.toSet()
	}
}
