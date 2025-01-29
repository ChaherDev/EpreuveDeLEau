func oneUppercaseInTwo (_ string: String) -> String {
    var arrayOfString = Array(string)
    
    var index = 0

    var letterIndex = 0

    while index < arrayOfString.count {
        if arrayOfString[index].isLetter {
            if letterIndex % 2 == 0 {
                arrayOfString[index] = Character(String(arrayOfString[index]).uppercased())
            } else {
                arrayOfString[index] = Character(String(arrayOfString[index]).lowercased())
            }
            letterIndex += 1
        }
        index += 1
    }

    return String(arrayOfString)
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument.")
} else if Double(CommandLine.arguments[1]) != nil {
    print("Vous devez fournir une chaîne de caractère et non un nombre.")
} else {
    print("\(oneUppercaseInTwo(CommandLine.arguments[1]))")
}