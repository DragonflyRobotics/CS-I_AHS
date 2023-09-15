// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let a : UInt8 = 3
let b : UInt8 = 5

let c : Int8 = -3
let d : Int8 = -5

let e : UInt16 = 340
let f : UInt16 = 209

let g : Int16 = -340
let h : Int16 = -209

let i : UInt = 1287
let j : UInt = 2559

let k : Int = -1287
let l : Int = -2559

let m : Float = 17.94
let n : Float = -17.94

let o : Double = 38.2e3
let p : Double = -38.2e3

let q : String = "12345"
let r : String = "67890"

// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


print(a+b)
print(c+d)
print(Int8(a)+c)
print(e+f)
print(g+h)
print(Int16(e)+h)
print(i+j)
print(k+l)
print(Int(i)+l)
print(m+n)
print(o+p)
print(Double(m)+p)
print(q+r)

if (Double(q) != nil && Double(r) != nil){
    print(Double(q)! + Double(r)!)
} else{
    print(0)
}

print(Int(exactly: a)!+k)
print(Double(b)+p)

if(Double(q) != nil){
    print(Double(exactly: c)! + Double(q)!)
} else {
    print(0)
}

if(Double(r) != nil){
    print(Double(j)+Double(r)!)
} else {
    print(0)
}
print(String(k)+String(l))
