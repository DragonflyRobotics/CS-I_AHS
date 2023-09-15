// Add your code below:
import Foundation
func isPrime(n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2 ..< Int(sqrt(Double(n))+1) {
        if(n%i) == 0{
            return false
        }
    }
    return true
}

func nextPrimeG(n: Int) -> Int {
    var num = n
    repeat {
        num += 1
    } while !isPrime(n: num)
    return num
}

func nextPrimeL(n: Int) -> Int {
    var num = n
    repeat {
        num -= 1
    } while !isPrime(n: num)
    return num
}

func adjacentPrimes(integers: [Int]) {
    for i in integers {
        let lower = nextPrimeL(n: i)
        let upper = nextPrimeG(n: i)
        print(lower, upper, separator: ",")
    }
}





// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let integers = [12, 14, 101, 7]
adjacentPrimes(integers:integers)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
