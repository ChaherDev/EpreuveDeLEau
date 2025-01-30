if CommandLine.arguments.count != 3 {
    print("error")
} else if Int(CommandLine.arguments[1]) == nil || Int(CommandLine.arguments[2]) == nil {
    print("error")
} else {
    minMax(firstArgument: Int(CommandLine.arguments[1])!, secondArgument: Int(CommandLine.arguments[2])!)
}

func minMax(firstArgument: Int, secondArgument: Int) {
    if firstArgument < secondArgument {
        for i in firstArgument...secondArgument {
            print(i, terminator: ", ")
        }
    } else if firstArgument > secondArgument {
        for i in secondArgument...firstArgument {
            print(i, terminator: ", ")
        }
    } else {
        print (firstArgument)
    }
}