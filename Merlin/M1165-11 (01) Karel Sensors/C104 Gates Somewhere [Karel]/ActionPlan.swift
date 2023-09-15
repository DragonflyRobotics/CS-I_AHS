

import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {
        var dumb = false
        while isGoalLocation() == false {
            while isFacingWest() == false {
                turnLeft()
            }
            while isFrontClear() == true && isLeftClear() == false {
                move()
            }
            for _ in 1...4 {
                turnLeft()
                if isGoalLocation() == true {
                    dumb = true
                }
            }
            if dumb == true {
                while !isFacingNorth() {
                    turnLeft()
                }
            }
            if dumb == false {
                while isFacingSouth() == false {
                    turnLeft()
                }
                if isFrontClear() == true {
                    move()
                }
                while isFacingEast() == false {
                    turnLeft()
                }
                while isFrontClear() == true && isRightClear() == false {
                    move()
                }
                while isFacingSouth() == false {
                    turnLeft()
                }
                if isFrontClear() == true {
                    move()
                }
            }
        }
    }
    
    func C103_run() {
        var dumb = false
        while isGoalLocation() == false {
/*            for _ in 1...4 {
                turnLeft()
                if isGoalLocation() == true {
                    while true {}
                }
            }*/
            while isFacingWest() == false {
                turnLeft()
            }
            while isLeftClear() == false && isFrontClear() == true {
                move()
                //if isRightClear() == false && isLeftClear() == false && isFrontClear() == false {
                //    dumb = true
                //    break
                //}
            }
            while isFacingSouth() == false {
                turnLeft()
            }
            if isFrontClear() == true {
                move()
            }
            for _ in 1...4 {
                turnLeft()
                if isGoalLocation() == true {
                    while isFacingNorth() == false {
                        turnLeft()
                    }
                    dumb = true
                    //while true {}
                }
            }
            if dumb == false {
                while isFacingEast() == false {
                    turnLeft()
                }
                while(isRightClear() == false && isFrontClear() == true) {
                    move()
                }
                while isFacingSouth() == false {
                    turnLeft()
                }
                if isFrontClear() == true {
                    move()
                }
            }
            //if isFrontClear() == false && isRightClear() == false && isLeftClear() == false {
            //    dumb = true
            //    break
            //}
/*            for _ in 1...4 {
                turnLeft()
            }
            if isGoalLocation() == true {
                dumb = true
                while 1==1 {}
            }*/
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
