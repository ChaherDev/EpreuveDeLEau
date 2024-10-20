//Paramètres à l’envers
//
//Créez un programme qui affiche ses arguments reçus à l’envers.
//
//Exemples d’utilisation :
//$> python exo.py “Suis” “Je” “Drôle”
//Drôle
//Je
//Suis
//
//$> python exo.py ha ho
//ho
//ha
//
//$> python exo.py “Bonjour 36”
//Bonjour 36
//
//Afficher error et quitter le programme en cas de problèmes d’arguments.


var arrayOfArguments = CommandLine.arguments
arrayOfArguments.removeFirst()

var reversedArrayOfArguments: [String] = []

if arrayOfArguments.isEmpty {
    print("error")
} else {
    for _ in arrayOfArguments {
        reversedArrayOfArguments.append(arrayOfArguments.removeLast())
    }
    print(reversedArrayOfArguments.joined(separator: " \n"))
}
