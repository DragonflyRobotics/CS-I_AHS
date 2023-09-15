

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
        return "hundred "
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
            if(index == (numArr.count-2) || index == (numArr.count-5)) {
                if idTens(digit: s) == "None"{
                    if (num2Word(num: Int(String(s)+String(numArr[index+1]))!) != "zero"){
                        if(index == (numArr.count-5)){
                            fin_num += num2Word(num: Int(String(s)+String(numArr[index+1]))!)
                        } else {
                            fin_num += num2Word(num: Int(String(s)+String(numArr[index+1]))!)
                            return fin_num
                        }
                    }
                } else {
                    if(num2Word(num: Int(String(numArr[index+1]))!) != "zero") {
                        //if(index == (numArr.count-2)) {
                        //       fin_num += "and " + idTens(digit: s) + "-"
                        //} else {
                            fin_num += idTens(digit: s) + "-"
                        //}
                    } else {
                        //if(index == (numArr.count-2)) {
                        //    fin_num += "and " + idTens(digit: s)
                        //} else {
                            fin_num += idTens(digit: s) 
                        //}
                    }
                }
            } else {
                if(num2Word(num: Int(String(s))!) != "zero") {
                       fin_num += num2Word(num: Int(String(s))!) + " "
                }
            }
            if(num2Word(num: Int(String(s))!) != "zero") {
                fin_num += magnitudes(index: numArr.count-index-1)
            }
            index += 1
        }
        //print(fin_num)
        return fin_num
    } else {
        return pass1
    }
}

func Conv2Digitv2(num: Int) -> String{
    let a = (num/10_000)%10
    let b = (num/1_000)%10
    let c = (num/100)%10
    let d = (num/10)%10
    let e = (num/1)%10

    var string = ""

    if (idTens(digit: Character(String(a))) == "None") {
        string += num2Word(num: (a*10)+b)
    } else {
        if(num2Word(num: b) != "zero"){
            string += idTens(digit: Character(String(a))) + "-" + num2Word(num: b)
        } else {
            string += idTens(digit: Character(String(a)))
        }
    }
    string += " thousand "

    if (num2Word(num: c) != "None" && num2Word(num: c) != "zero") {
        string += num2Word(num: c) + " hundred "
    }

    //print(idTens(digit: Character(String(d))))
    if (idTens(digit: Character(String(d))) != "None") {
        if(num2Word(num: e) != "zero") {
            string += idTens(digit: Character(String(d))) + "-" + num2Word(num: e)
        } else {
            string += idTens(digit: Character(String(d)))
        }
    } else {
        if(num2Word(num: d) == "zero") {
            string += num2Word(num:e)
        } else {
            string += num2Word(num: (10*d)+e)
        }
    }
    
    return string
    
}

print(Conv2Digitv2(num: number))
