import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {

        // Insert your code here:
        while !isFacingEast() {
            turnLeft()
        }
        while !isBeeperHere() {
            move()
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
        while isFrontClear() {
        move()
}
        while !isFacingNorth() {
            turnLeft()
        }
        move()

    }
    
}
