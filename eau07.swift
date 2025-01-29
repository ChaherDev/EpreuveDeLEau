func uppercase (_ string: String) -> String {
    var arrayOfString = Array(string)

    var letterIndex = 0

    while letterIndex < arrayOfString.count {
        if arrayOfString[letterIndex].isWhitespace == false && arrayOfString[letterIndex].isLetter {
            arrayOfString[letterIndex] = Character(String(arrayOfString[letterIndex]).uppercased())
            letterIndex += 1
            while arrayOfString[letterIndex].isWhitespace == false && letterIndex < arrayOfString.count {
                arrayOfString[letterIndex] = Character(String(arrayOfString[letterIndex]).lowercased())
                letterIndex += 1
            }
        } else {
            letterIndex += 1
        }      
    }

    return String(arrayOfString)
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument.")
} else if CommandLine.arguments[1].allSatisfy({ !$0.isLetter }) {
    print("Vous devez fournir une chaîne de caractère et non un nombre.")
} else {
    print("\(uppercase(CommandLine.arguments[1]))")
}