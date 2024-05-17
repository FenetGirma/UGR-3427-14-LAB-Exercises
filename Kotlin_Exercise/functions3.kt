fun main() {
    val str1 = "abcdefg"   // Contains unique characters
    val str2 = "hello"     // Contains duplicate characters

    println("Does '$str1' contain only unique characters? ${hasUniqueCharacters(str1)}")
    println("Does '$str2' contain only unique characters? ${hasUniqueCharacters(str2)}")
}

fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()

    for (char in str) {
        if (charSet.contains(char)) {
            return false   // If the character is already in the set, it's not unique
        }
        charSet.add(char)
    }

    return true  // If no duplicate characters found, return true
}
