for i in 0...9 {
    for j in 0...9 {
        for k in 0...9 {
            if i == 7 && j == 8 && k == 9 {
                print("789")
            } else if i < j && j < k {
                print("\(i)\(j)\(k)", terminator: ", ")
            }
        }
    }
}