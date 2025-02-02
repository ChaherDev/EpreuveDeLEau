func indexWanted() -> Int {
    var arguments = CommandLine.arguments
    arguments.remove(at: 0)
    let lastArgument = arguments.remove(at: arguments.count - 1)

    if arguments.count == 1 {
        if arguments[0] == lastArgument {
            return 0
        }
    } else {
        for i in 0...arguments.count - 1 {
            if arguments[i] == lastArgument {
                return i
            }
        }
    }

    return -1
}

if CommandLine.arguments.count < 3 {
    print("error")
} else {
    print("\(indexWanted())")
}