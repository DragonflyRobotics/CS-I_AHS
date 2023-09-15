// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let string = " 5 "
let m = 1
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
import Foundation

func charConv(string: String) ->  Int {
    if string.contains("0") {
        return 0
    } else if string.contains("1") {
        return 1
    } else if string.contains("2") {
        return 2
    } else if string.contains("3") {
        return 3
    } else if string.contains("4") {
        return 4
    } else if string.contains("5") {
        return 5
    } else if string.contains("6") {
        return 6
    } else if string.contains("7") {
        return 7
    } else if string.contains("8") {
        return 8
    } else if string.contains("9") {
        return 9
    } else {
        return 0
    }
}

let num = charConv(string: string)
print(num)
print(num/m)
