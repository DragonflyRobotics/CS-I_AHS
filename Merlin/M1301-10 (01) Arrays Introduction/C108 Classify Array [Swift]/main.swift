// Add your code below:
func classify(integers: [Int]) -> Int {
    var ctn = 0
    var even: [Int] = []
    var odd: [Int] = []
    var negative: [Int] = []
    var positive: [Int] = []
    for n in integers {
        if (n%2) != 0 {
            even.append(n)
            ctn += 1
        }
    }
    for i in even {
        print(even.firstIndex(of: i)! < even.count-1 ? String(i) + "," : String(i), terminator: "")
    }
    print("")
    for n in integers {
        if (n%2) == 0 {
            odd.append(n)
            ctn += 1
        }
    }
    for i in odd {
        print(odd.firstIndex(of: i)! < odd.count-1 ? String(i) + "," : String(i), terminator: "")
    }
    print("")
    for n in integers {
        if n < 0 {
            negative.append(n)
            ctn += 1
        }
    }
    for i in negative {
        print(negative.firstIndex(of: i)! < negative.count-1 ? String(i) + "," : String(i), terminator: "")
    }
    print("")
    for n in integers {
        if n > 0 {
            positive.append(n)
            ctn += 1
        }
    }
    for i in positive {
        print(positive.firstIndex(of: i)! < positive.count-1 ? String(i) + "," : String(i), terminator: "")
    }
    print("")
    return ctn
}





// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let integers : [Int] = [12, 14, -5, 7]
print(classify(integers:integers))
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
