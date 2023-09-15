// Add your code below:
import Foundation
func printSameOddnessIntegers(integers: [Int]) -> Int {
    var ctn = 0
    for n in 0..<integers.count {
        if (n-1) >= 0 {
            //print("n: \(integers[n]), n-1: \(integers[n-1]) | n%2: \(integers[n]%2), n-1%2: \((integers[n-1])%2)")
            if abs(integers[n]%2) == abs(integers[n-1]%2) && abs(n%2) == 0 {
                print(integers[n])
                ctn += 1
            }
        }
    }
    return ctn
}
                   





// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let integers : [Int] = [-8649, 9428, 5591, -4169, 4759, 2819, -3220]//[9, 111, 15, 12]
print(integers)
let count = printSameOddnessIntegers(integers:integers)
print(count)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
