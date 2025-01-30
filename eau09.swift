if CommandLine.arguments.count != 3 {
    print("error")
} else if Int(CommandLine.arguments[1]) == nil || Int(CommandLine.arguments[2]) == nil {
    print("error")
} else {
    minMax(firstArgument: Int(CommandLine.arguments[1])!, secondArgument: Int(CommandLine.arguments[2])!)
}

func minMax(firstArgument: Int, secondArgument: Int) {
    if firstArgument < secondArgument {
        var arrayOfNumbers = [Int]
        for i in firstArgument...secondArgument {
            arrayOfNumbers.append(i)
        }
        let numbers = arrayOfNumbers.map { String($0) }.joined(separator: ", ")
    } else if firstArgument > secondArgument {
        var arrayOfNumbers = [Int]
        for i in secondArgument...firstArgument {
            arrayOfNumbers.append(i)
        }
        let numbers = arrayOfNumbers.map { String($0) }.joined(separator: ", ") 
    } else {
        print (firstArgument)
    }
}