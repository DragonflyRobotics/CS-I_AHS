

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let number : Int = 5
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

func num2Word(num: Int) -> String {
    switch num {
    case 0:
        return "zero"
    case 1:
        return "one"
    case 2:
        return "two"
    case 3:
        return "three"
    case 4:
        return "four"
    case 5:
        return "five"
    case 6:
        return "six"
    case 7:
        return "seven"
    case 8:
        return "eight"
    case 9:
        return "nine"
    case 10:
        return "ten"
    case 11:
        return "eleven"
    case 12:
        return "twelve"
    case 13:
        return "thirteen"
    case 14:
        return "fourteen"
    case 15:
        return "fifteen"
    case 16:
        return "sixteen"
    case 17:
        return "seventeen"
    case 18:
        return "eighteen"
    case 19:
        return "nineteen"
    default:
        return "None"
    }
    //return "None"
}

func idTens(digit: Character) -> String {
    switch digit{
    case "2":
        return "twenty"
    case "3":
        return "thirty"
    case "4":
        return "forty"
    case "5":
        return "fifty"
    case "6":
        return "sixty"
    case "7":
        return "seventy"
    case "8":
        return "eighty"
    case "9":
        return "ninety"
    default:
        return "None"
    }
}


func magnitudes(index: Int) -> String{
    switch index{
    case 2:
        return "hundred and "
    case 3:
        return "thousand "
    default:
        return ""
    }
}


func Conv2Digit(num: Int) -> String {
    let pass1 = num2Word(num: num)
    //print(pass1)
    if (pass1 == "None") {
        let numString = String(num)
        var numArr: [Character] = []
        for c in numString{
            numArr.append(c)
        }
        var fin_num = ""
        //print(numArr)
        var index = 0
        for s in numArr{
            //print("\(index) --> \(s)")
            if(index == (numArr.count-2)) {
                if idTens(digit: s) == "None"{
                    fin_num += num2Word(num: Int(String(s)+String(numArr[index+1]))!)
                    return fin_num
                } else {
                    if(num2Word(num: Int(String(numArr[index+1]))!) != "zero") {
                        fin_num += idTens(digit: s) + "-"
                    } else {
                        fin_num += idTens(digit: s)
                    }
                }
            } else {
                if(num2Word(num: Int(String(s))!) != "zero") {
                       fin_num += num2Word(num: Int(String(s))!) + " "
                }
            }
            fin_num += magnitudes(index: numArr.count-index-1)
            index += 1
        }
        //print(fin_num)
        return fin_num
    } else {
        return pass1
    }
}

//print(number)
print(Conv2Digit(num: number))
