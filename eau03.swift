func printTheTerm() {
    func fibonacciSequence() {
        thirdNumber = firstNumber + secondNumber
        firstNumber = secondNumber
        secondNumber = thirdNumber
    }

    while initialTerm < terminalTerm {
        fibonacciSequence()
        initialTerm += 1
    }

    print(firstNumber)
}

var firstNumber = 0
var secondNumber = 1
var thirdNumber = 0
var initialTerm = 0
var terminalTerm = 0

if CommandLine.arguments.count != 2 {
    print("Erreur: Vous devez fournir un argument.")
} else if let input = Int(CommandLine.arguments[1]) {
    if input < 0 {
        print("Erreur: l’index doit être un entier positif.")
    } else if input == 0 {
        print("Erreur: comment voulez-vous que je te donne le 0ème élément de la suite de Fibonacci ?")
    } else {
        terminalTerm = input
        printTheTerm()
    }
} else {
    print("Erreur: vous devez fournir un nombre entier.")
}
