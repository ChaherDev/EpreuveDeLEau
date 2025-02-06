import Foundation

func trierArguments(_ arguments: [String]) {
    let triés = arguments.sorted()
    print(triés.joined(separator: " "))
}

let arguments = Array(CommandLine.arguments.dropFirst())

if arguments.isEmpty {
    print("error")
} else {
    trierArguments(arguments)
}