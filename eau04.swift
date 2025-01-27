func primeNumbers() {
    let argument = Int(CommandLine.arguments[1]) ?? 0

    var result = [Int]()

    for i in 0...(argument * 2) {
        if isPrimeNumber(i) && i > argument {
            result.append(i)
        }
    }

    print(result[0])
}

func isPrimeNumber(_ number: Int) -> Bool {
    if number == 0 || number == 1 {
        return false
    }

    if number == 2 || number == 3 {
        return true
    }

    let limit = Int(Double(number).squareRoot())
    for diviseur in 2...limit {
        if number % diviseur == 0 {
            return false
        }
    }

    return true
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument.")
} else if Int(CommandLine.arguments[1]) == nil {
    print("Vous devez fournir un nombre entier")
} else if Int(CommandLine.arguments[1])! < 0 {
    print("Vous devez fournir un nombre entier positif")
} else {
    primeNumbers()
}