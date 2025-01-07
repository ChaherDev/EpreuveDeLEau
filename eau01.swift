
func eau01() {
    for i in 0...9 {
        for j in 0...9 {
            for k in 0...9 {
                for l in 0...9 {
                    if "\(i)\(j)" == "\(k)\(l)" {
                        continue
                    } else if i == 9 && j == 8 && k == 9 && l == 9 {
                        print("\(i)\(j) \(k)\(l)")
                        return
                    } else {
                        print("\(i)\(j) \(k)\(l)", terminator: ", ")
                    }
                }
            }
        }
    }
}

eau01()