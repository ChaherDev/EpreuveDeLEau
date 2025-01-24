var firstNumber = 0
var secoundNumber = 1
var thirdNumber = 0
var initialTerm = 0
var terminalTerm = 0

if CommandLine.arguments.count != 2 {
    print("Erreur: Vous devez fournir un argument.")
} else if Int(CommandLine.arguments[1]) != nil {
    if Int(CommandLine.arguments[1]) == 0 {
        print("Erreur: comment voulez-vous que je te donne le 0ème élément de la suite de Fibonacci ?")
    }
    if Int(CommandLine.arguments[1])! < 0 {
        print("Erreur: l’index doit être un entier positif.")
    } else {
        terminalTerm = Int(CommandLine.arguments[1])!
        printTheTerm()
    }
} else {
    print("Erreur: vous devez fournir un nombre entier.")
}

func printTheTerm() {
    func fibonnacySequence() {
    thirdNumber = firstNumber + secoundNumber
    initialTerm += 1
    if initialTerm == terminalTerm {
        print(firstNumber)
    }
    firstNumber = secoundNumber
    secoundNumber = thirdNumber
    }

    while initialTerm != terminalTerm  {
        fibonnacySequence()
    }
}
