// Suite de Fibonacci

// Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci. (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.

// Exemples d’utilisation :
// $> python exo.py 3
// 2
// $>

// Afficher -1 si le paramètre est négatif ou mauvais.

func fibonacci(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }

    var previous = 0
    var current = 1

    for _ in 2...n {
        let next = previous + current
        previous = current
        current = next
    }

    return current
}

if CommandLine.arguments.count != 2 || Int(CommandLine.arguments[1]) == nil || Int(CommandLine.arguments[1])! < 0 {
    print(-1)
} else {
    let argument = Int(CommandLine.arguments[1])!

    let result = fibonacci(argument)
    print(result)
}