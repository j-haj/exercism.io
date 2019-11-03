object Pangram {
	fun isPangram(sentence: String) = sentence.toLowerCase()
		.asSequence()
		.filter({ it.isLetter() })
		.toHashSet()
		.size == 26
}
