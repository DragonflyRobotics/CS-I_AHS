// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let string = " 5 "
let m = 1
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
import Foundation

func charConv(string: Character) ->  Int {
    if string == "0" {
        return 0
    } else if string == "1" {
        return 1
    } else if string == "2" {
        return 2
    } else if string == "3" {
        return 3
    } else if string == "4" {
        return 4
    } else if string == "5" {
        return 5
    } else if string == "6" {
        return 6
    } else if string == "7" {
        return 7
    } else if string == "8" {
        return 8
    } else if string == "9" {
        return 9
    } else {
        return 0
    }
}

func conv(string: String) -> Int {
    var num_arr: [Int] = []

    for c in string {
        if c != " " {
            num_arr.append(charConv(string: c))
        }
    }


    num_arr = num_arr.reversed()


    var num = 0
    var placeMult = 1
    for n in num_arr {
        num += n * placeMult
        placeMult *= 10
    }
    return num
}

print(string)
print(conv(string: string)/m)
