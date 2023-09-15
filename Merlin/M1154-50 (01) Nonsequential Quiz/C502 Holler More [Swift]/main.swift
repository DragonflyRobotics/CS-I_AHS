// Add your code below:
// Add your code below:
func hollers(from: String, to: String, repeated: Int) -> Int {
    var sup = from + " hollers "
    for i in 1...repeated {
        var punc = ""
        for _ in 1...i {
            punc += "!"
        }
        if(i == repeated) {
            sup += to + punc
        }
        else {
            sup += to + punc + ", "
        }
    }
    print(sup)
    return sup.count
}

func hollersAndPrintCount(from: String, to: String, repeated: Int) {
    let charCount = hollers(from: from, to:to, repeated: repeated)
    print(charCount)
}





// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let _ = hollers(from:"Bob", to:"Alice", repeated:3)
hollersAndPrintCount(from:"Bob", to:"Alice", repeated:3)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
