import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {

        // Insert your code here:
        var beepers: [Int] = []

        while !isFacingEast() {
            turnLeft()
        }
        while isFrontClear() && !isBeeperHere() {
            move()
        }
        while isBeeperHere() {
            beepers.append(getBeepers())
            while !isFacingNorth() {
                turnLeft()
            }
            move()
        }
        beepers.reverse()
        while !isFacingEast() {
            turnLeft()
        }
        move()

        var downs = 0
        
        for i in beepers {
            while !isFacingSouth() {
                turnLeft()
            }
            move()
            downs += 1
            while !isFacingEast() {
                turnLeft()
            }
            for j in 0..<i{
                putDownBeeper()
                if isFrontClear() {
                    move()
                }
            }
            while !isFacingWest() {
                turnLeft()
            }
            while isFrontClear() {
                move()
            }
        }
        while !isFacingEast() {
            turnLeft()
        }
        while isFrontClear() {
            move()
        }
        while !isFacingNorth() {
            turnLeft()
        }
        for _ in 1...downs {
            move()
        }
        
    }

    func getBeepers() -> Int {
        var num = 0
        while isBeeperHere() {
            pickUpBeeper()
            num += 1
        }
        return num
    }
}
