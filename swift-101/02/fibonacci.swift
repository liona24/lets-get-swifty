
let n = 10

var p = 0
var pp = 1
for _ in 0..<n {
    let tmp = p + pp
    p = pp
    pp = tmp
}

print("The \(n)th fibonacci number is \(p)!")
