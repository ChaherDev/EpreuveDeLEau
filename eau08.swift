func chiffreOnly(_ argument: String) -> Bool {
    if Int(argument) == nil {
        return false
    } else {
        return true
    }
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument")
} else if chiffreOnly(CommandLine.arguments[1]) {
    print("true")
} else {
    print("false")
}