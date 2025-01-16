import Foundation

for i in 0...98 {
    for j in i+1...99 {
        if i < j {
            if i == 98 && j == 99 {
                print("98 99")
            } else {
                let formattedI = String(format: "%02d", i)
                let formattedJ = String(format: "%02d", j)
                print("\(formattedI) \(formattedJ)", terminator: ", ")
            }
        }
    }
}
