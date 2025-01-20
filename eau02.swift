var index = CommandLine.arguments.count - 1

if index < 0 {
    print("error")
} else {
    while index != 0 {
        print(CommandLine.arguments[index])
        index -= 1
    }
}