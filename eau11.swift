func areArgumentsIntegers() -> Bool {
    let integers = arguments.compactMap { Int($0) }
    if arguments.count != integers.count {
        return false
    }
    return true
}

func absoluteMinimumDifference() {
    let integers = arguments.compactMap { Int($0) }
    var arrayOfDifferences = [Int]()
    for i in 0..<integers.count {
        for j in i+1..<integers.count {
            let difference = abs(integers[i] - integers[j])
            arrayOfDifferences.append(difference)
        }
    }
    arrayOfDifferences.sort()
    print(arrayOfDifferences[0])
}

let arguments = CommandLine.arguments.dropFirst()

if arguments.count < 2 {
    print("error")
} else if areArgumentsIntegers() == false {
    print("error")
} else {
    absoluteMinimumDifference()
}