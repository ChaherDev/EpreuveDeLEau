if CommandLine.arguments.count < 3 {
    print("Vous devez fournir au moins deux nombres")
} 

var arguments = CommandLine.arguments

print(type(of: arguments))