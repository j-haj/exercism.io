import java.util.ArrayList

fun Int.isDivisibleByThree(): Boolean = this % 3 == 0
fun Int.isDivisibleByFive(): Boolean = this % 5 == 0
fun Int.isDivisibleBySeven(): Boolean = this % 7 == 0


object Raindrops {
	fun convert(n: Int): String {
		var output = ""
		if (n.isDivisibleByThree()) output += "Pling"
		if (n.isDivisibleByFive()) output += "Plang"
		if (n.isDivisibleBySeven()) output += "Plong"

		if (output == "") return n.toString(10)
		return output
	}
}
