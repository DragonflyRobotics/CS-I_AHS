import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {

        // Insert your code here:
        turnRight();
        move();

    }

    func turnRight() {
        for _ in 1...3 {
            turnLeft();
        }
    }
}
