func areArgumentsIntegers() -> Bool {
    let integers = arguments.compactMap { Int($0) }
    if arguments.count != integers.count {
        return false
    }
    return true
}

func myBubbleSort(_ array: [String]) -> [String] {
    var arrayOfInt = array.compactMap { Int($0) }
    for _ in 0..<arrayOfInt.count {
        for i in 0..<arrayOfInt.count-1 {
            if arrayOfInt[i] > arrayOfInt[i+1] {
                arrayOfInt.swapAt(i, i+1)
            }
        }
    }
    let arrayOfString = arrayOfInt.map { String($0) }
    return arrayOfString
}

var arguments = CommandLine.arguments
arguments.removeFirst()

if arguments.count < 2 {
    print("error")
} else if areArgumentsIntegers() == false {
    print("error")
} else {
    print(myBubbleSort(arguments).joined(separator: " "))
}