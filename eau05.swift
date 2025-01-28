func arrays() -> Bool {
    let firstArray = Array(CommandLine.arguments[1])
    let secondArray = Array(CommandLine.arguments[2])

    if secondArray.count > firstArray.count {
        return false
    }

    for i in 0...secondArray.count - 1 {
        if firstArray[i] != secondArray[i] {
            return false
        }
    }

    return true
}

if CommandLine.arguments.count != 3 {
    print("error")
} else if arrays() {
    print("true")
} else {
    print("false")
}