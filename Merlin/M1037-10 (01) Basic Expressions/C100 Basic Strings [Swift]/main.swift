// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let x = "x-ray"
let y = "yankee"
let z = "zulu"
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

print("Hello, World!")
print("one,two,three,four,five")
print("one<->two<->three<->four<->five")
print(x)
print(y)
print(x + "|" + y)
print(x + "\n" + y + "\n" + z)
print("five|four|three|two|one|zero")
print(x + "|" + y + "|" + z)
print("line one \n line two \n line three")
print("fourteen \n fifteen \n" + x + "\n sixteen \n" + y + "\n seventeen")

let list = ["five", "five", "five", "one", "two"]

var s : String = ""

for l in list {
    if(l != "two") {
        s += l + "-<|>-"
    } else {
        s += l
    }
}
print(s)
