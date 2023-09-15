import Scenes
import Igis

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer : Layer, KeyDownHandler {

    var ball = Ball()
    var person1 = Person1()
    var person2 = Person2()
    var zombies: [Zombie] = []
    var text = Score()
    var score1 = 0
    var score2 = 0
    var hits1 = 0
    var hits2 = 0
    var level = 1
    
      init() {
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Interaction")

          
          
          // We insert our RenderableEntities in the constructor
          insert(entity: person1, at: .front)
          insert(entity: person2, at: .front)
          insert(entity: text, at: .front)
          
          //ball.changeVelocity(velocityX: 3, velocityY: 5)
//          person1.posex = 150
//          person1.posey = 650
          
      }

      override func preSetup(canvasSize: Size, canvas: Canvas) {
          dispatcher.registerKeyDownHandler(handler: self)
      }

      override func postTeardown() {
          dispatcher.unregisterKeyDownHandler(handler: self)
      }

      func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool) {
          //          print(key)
          print("==========\(score1), \(score2)==========")
          print(key)
          
          switch key {
          case "ArrowUp":
              score2 = person2.velocity(xvel: 0, yvel: -30)
          case "ArrowDown":
              score2 = person2.velocity(xvel: 0, yvel: 30)
          case "ArrowRight":
              score2 = person2.velocity(xvel: 30, yvel: 0)
          case "ArrowLeft":
              score2 = person2.velocity(xvel: -30, yvel: 0)
          default:
              score2 = person2.velocity(xvel: 0, yvel: 0)
          }
          switch key {
          case "w":
              score1 = person1.velocity(xvel: 0, yvel: -30)
          case "s":
              score1 = person1.velocity(xvel: 0, yvel: 30)
          case "a":
              score1 = person1.velocity(xvel: -30, yvel: 0)
          case "d":
              score1 = person1.velocity(xvel: 30, yvel: 0)
          default:
              score1 = person1.velocity(xvel: 0, yvel: 0)
          }

          switch key {
          case "1":
              level = 1
          case "2":
              level = 2
          case "3":
              level = 3
          default:
              level += 0

          let person1Bound = person1.CharBound()
          let person2Bound = person2.CharBound()

          for zombieBound in zombies {
              if (!person1Bound.containment(target: zombieBound.CharBound()).intersection([.contact]).isEmpty) {
                  hits1 += 1
                  zombies.remove(at: zombies.firstIndex(of: zombieBound)!)
                  zombieBound.destroy()
                  break
              }
              if (!person2Bound.containment(target: zombieBound.CharBound()).intersection([.contact]).isEmpty) {
                  hits2 += 1
                  zombies.remove(at: zombies.firstIndex(of: zombieBound)!)
                  zombieBound.destroy()
                  break
              }
          }

          while zombies.count < (score1-hits1+score2-hits2) {
              for _ in 0..<level {
                  let z = Zombie()
                  insert(entity: z, at: .front)
                  zombies.append(z)
              }
          }
          
          text.updateScore(s1: score1-hits1, s2: score2-hits2, level: "\(level)")
          }
      }
      
  }
