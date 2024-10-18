for i in 0...9 {
    for j in 1...9 {
        for k in 2...9 {
            if i == j || j == k || i == k {
                continue
            }
            print("\(i)\(j)\(k)", terminator: ", ")
        }
    }
}

// ordre respecté, mais les combines de chiffres ne sont pas uniques ...
