import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {
	while isFrontClear() {
            forward(blocks: 1)
        }
        // Insert your code here:
        while isLeftClear() {
            strafeLeft(blocks: 1)
        }
        while !isGoalLocation() {
            strafeBackward(blocks: 1)
        }
  }

    func turnRight() {
        for _ in 1...3 {
            turnLeft();
        }
    }
    
    func backward(blocks: Int) {
        for _ in 1...2 {
            turnLeft();
        }
        forward(blocks: blocks);
    }

    func strafeBackward(blocks: Int) {
        backward(blocks: blocks);
        for _ in 1...2 {
            turnLeft();
        }
    }

    func forward(blocks: Int) {
        for _ in 1...blocks {
            move();
        }
    }

    func strafeRight(blocks: Int) {
        turnRight();
        forward(blocks: blocks);
        turnLeft();
    }

    func strafeLeft(blocks: Int) {
        turnLeft();
        forward(blocks: blocks);
        turnRight();
    }
}
