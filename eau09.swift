func minMax(firstArgument: String, secondArgument: String) {
    if Int(firstArgument)! < Int(secondArgument)! {
        var arrayOfNumbers = [String]()
        for i in Int(firstArgument)!...Int(secondArgument)! {
            arrayOfNumbers.append(String(i))
        }
        let numbers = arrayOfNumbers.joined(separator: ", ")
        print(numbers)
    } else if Int(firstArgument)! > Int(secondArgument)! {
        var arrayOfNumbers = [String]()
        for i in Int(secondArgument)!...Int(firstArgument)! {
            arrayOfNumbers.append(String(i))
        }
        let numbers = arrayOfNumbers.joined(separator: ", ") 
        print(numbers)
    } else {
        print (firstArgument)
    }
}

if CommandLine.arguments.count != 3 {
    print("error")
} else if Int(CommandLine.arguments[1]) == nil || Int(CommandLine.arguments[2]) == nil {
    print("error")
} else {
    minMax(firstArgument: CommandLine.arguments[1], secondArgument: CommandLine.arguments[2])
}