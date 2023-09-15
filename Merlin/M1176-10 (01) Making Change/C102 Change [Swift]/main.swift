// Add your code below:
// Add your code above


// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let itemSubtotal = "$123.45"
let tip = "$12.00"
let tax = "$6.00"
let amountPaid = "$200.00"
printReceipt(itemSubtotal:itemSubtotal, tip:tip, tax:tax, amountPaid:amountPaid)

// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

import Foundation


func printReceipt(itemSubtotal: String, tip: String, tax: String, amountPaid: String) {
    let currencyFormatter = NumberFormatter()
    currencyFormatter.usesGroupingSeparator = false
    currencyFormatter.numberStyle = .currency
    // localize to your grouping and decimal separator
    currencyFormatter.locale = Locale.current

    
    
    
    print("Item Subtotal: \(itemSubtotal)")
    print("Tip: \(tip)")
    print("Tax: \(tax)")
    var itemSubtotal = itemSubtotal
    var tip = tip
    var tax = tax
    var amountPaid = amountPaid
    itemSubtotal.remove(at: itemSubtotal.index(itemSubtotal.startIndex, offsetBy: 0))
    tip.remove(at: tip.index(tip.startIndex, offsetBy: 0))
    tax.remove(at: tax.index(tax.startIndex, offsetBy: 0))
    let subtotal_d = Double(itemSubtotal)!
    let tip_d = Double(tip)!
    let tax_d = Double(tax)!
    let total = round((subtotal_d+tip_d+tax_d) * 100.00) / 100.00
    print("Total: \(currencyFormatter.string(from: total as NSNumber)!)")
    print("Amount paid: \(amountPaid)")
    amountPaid.remove(at: amountPaid.index(amountPaid.startIndex, offsetBy: 0))
    let amountpaid_d = Double(amountPaid)!
    let change = amountpaid_d - total + 0.000001
    printDenominations(forSum: change)
}

func printDenominations(forSum: Double) {
    //print("Original sum: \(forSum)")
    print("Change: ")
    //var sum_str = forSum
    
    //let _ = sum_str.remove(at: sum_str.index(sum_str.startIndex, offsetBy: 0))
    var sum = forSum //Double(sum_str)!
    

    let hundred = Int((sum/100).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(100 * hundred)

    let fifty = Int((sum/50).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(50 * fifty)

    let twenty = Int((sum/20).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(20 * twenty)

    let ten = Int((sum/10).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(10 * ten)

    let five = Int((sum/5).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(5 * five)

    let two = Int((sum/2).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(2 * two)

    let one = Int(sum.truncatingRemainder(dividingBy: 10.0))
    sum -= Double(one)

    if hundred > 0 {
        hundred == 1 ? print("\(hundred) x $100 bill") : print("\(hundred) x $100 bills")
    }
    if fifty > 0 {
        fifty == 1 ? print("\(fifty) x $50 bill") : print("\(fifty) x $50 bills")
    }
    if twenty > 0 {
        twenty == 1 ? print("\(twenty) x $20 bill") : print("\(twenty) x $20 bills")
    }
    if ten > 0 {
        ten == 1 ? print("\(ten) x $10 bill") : print("\(ten) x $10 bills")
    }
    if five > 0 {
        five == 1 ? print("\(five) x $5 bill") : print("\(five) x $5 bills")
    }
    if two > 0 {
        two == 1 ? print("\(two) x $2 bill") : print("\(two) x $2 bills")
    }
    if one > 0 {
        one == 1 ? print("\(one) x $1 bill") : print("\(one) x $1 bills")
    }

    sum += 0.000001
    
    let half_dollar_coin = Int((sum/0.5).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(half_dollar_coin) * 0.5

    let quarter_coin = Int((sum/0.25).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(quarter_coin) * 0.25

    let dime_coin = Int((sum/0.1).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(dime_coin) * 0.1

    let nickel_coin = Int((sum/0.05).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(nickel_coin) * 0.05

    

//    print(sum)
    
    let penny_coin = Int((sum/0.01).truncatingRemainder(dividingBy: 10.0))
    sum -= Double(penny_coin) * 0.01

    if half_dollar_coin > 0 {
        half_dollar_coin == 1 ? print("\(half_dollar_coin) x half-dollar coin") : print("\(half_dollar_coin) x half-dollar coins")
    }
    if quarter_coin > 0 {
        quarter_coin == 1 ? print("\(quarter_coin) x quarter") : print("\(quarter_coin) x quarters")
    }
    if dime_coin > 0 {
        dime_coin == 1 ? print("\(dime_coin) x dime") : print("\(dime_coin) x dimes")
    }
    if nickel_coin > 0 {
        nickel_coin == 1 ? print("\(nickel_coin) x nickel") : print("\(nickel_coin) x nickels") 
    }
    if penny_coin > 0 {
        penny_coin == 1 ? print("\(penny_coin) x penny") : print("\(penny_coin) x pennies")
    }
    
    print("")
    print("Bills: \(hundred+fifty+twenty+ten+five+two+one)")
    print("Coins: \(half_dollar_coin+quarter_coin+dime_coin+nickel_coin+penny_coin)")
}
