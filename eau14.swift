import Foundation

func trierArguments(_ arguments: [String]) {
    var elements = arguments
    let count = elements.count

    for i in 0..<count {
        for j in 0..<(count - i - 1) {
            if elements[j] > elements[j + 1] {
                elements.swapAt(j, j + 1)
            }
        }
    }
    
    print(elements.joined(separator: " "))
}

let arguments = Array(CommandLine.arguments.dropFirst())

if arguments.isEmpty {
    print("error")
} else {
    trierArguments(arguments)
}
