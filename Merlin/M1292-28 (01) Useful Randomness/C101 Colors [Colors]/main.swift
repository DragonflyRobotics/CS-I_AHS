import Foundation

func throwDart(count: Int) -> [[Double]] {
    var dart_locations: [[Double]] = []
    for _ in 0..<count {
        let x = Double.random(in: -1...1)
        let y = Double.random(in: -1...1)
        dart_locations.append([x, y])
    }
    return dart_locations
}

func calcPi(darts: [[Double]]) -> Double {
    var darts_in_circle = 0

    for d in darts{
        if(sqrt((d[0]*d[0]) + (d[1]*d[1])) <= 1) {
            darts_in_circle += 1
        }
        //print("\(4.0*(Double(darts_in_circle)/Double(darts.count)))\r")
    }
    return 4.0*(Double(darts_in_circle)/Double(darts.count))
}

print(calcPi(darts: throwDart(count: 500_000_000)))
