
fun Char.isVowel(): Boolean = when (val c = this.toLowerCase()) {
	'a', 'e', 'i', 'o', 'u', 'y' -> true
	else -> false
}

fun String.beginsWithVowelSound(): Boolean = this.length > 0 && (this.startsWith("yt", ignoreCase = true) ||
																 this.startsWith("xr", ignoreCase = true) ||
																 (this[0].toLowerCase() != 'y' && this[0].isVowel()))

fun String.toPigLatin(): String {
	var postfix = ""
	when {
		!this.beginsWithVowelSound() -> {
			var priorWasQ = false
			var startsWithY = this[0].toLowerCase() == 'y'
			for (c in this) {
				println("c = $c")
				if (priorWasQ && c.toLowerCase() == 'u') {
					postfix += c
					break
				} else if (startsWithY || !c.isVowel()) {
					if (c == 'q' || c == 'Q') priorWasQ = true
					postfix += c
					startsWithY = false
				} else {
					break
				}
				println("postfix = $postfix")
			}
		}
	}
	return this.drop(postfix.length) + postfix + "ay"
}

object PigLatin {
	fun translate(phrase: String): String {
		return phrase.split(Regex("""\s+""")).map {
			it.toPigLatin()
		}
			.joinToString(separator=" ")
	}
}
