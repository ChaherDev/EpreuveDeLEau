import Foundation

func triParSelection(_ numbers: inout [Int]) {
    for i in 0..<numbers.count - 1 {
        var minIndex = i
        for j in (i + 1)..<numbers.count {
            if numbers[j] < numbers[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            numbers.swapAt(i, minIndex)
        }
    }
}

if CommandLine.arguments.count < 2 {
    print("error")
} else if CommandLine.arguments.dropFirst().contains(where: { Int($0) == nil }) {
    print("error")
} else {
    var numbers = CommandLine.arguments.dropFirst().compactMap { Int($0) }
    triParSelection(&numbers)
    print(numbers.map { String($0) }.joined(separator: " "))
}
