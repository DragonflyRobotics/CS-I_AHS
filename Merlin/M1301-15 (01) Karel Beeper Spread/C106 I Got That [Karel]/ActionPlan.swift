import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {

        // Insert your code here:
        while !isGoalLocation() {
            while !isFacingEast() {
                turnLeft()
            }
            while !isBeeperHere() && isFrontClear() {
                move()
            }
            while !isFacingNorth() {
                turnLeft()
            }
            if !isGoalLocation() {
                while !isFacingEast() {
                    turnLeft()
                }
	        while isBeeperHere() {
                    pickUpBeeper()
                }
                while anyBeepersInBag() {
                    move()
                    putDownBeeper()
                }
                //move()
                //putDownBeeper()
                while !isFacingWest() {
                    turnLeft()
                }
                while isFrontClear() {
                    move()
                }
                while !isFacingNorth() {
                    turnLeft()
                }
                move()
            }
        }
    }    
}
