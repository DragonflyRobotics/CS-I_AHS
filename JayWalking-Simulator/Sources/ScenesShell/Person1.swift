import Foundation
import Scenes
import Igis

class Person1: RenderableEntity {

    let furze: Image;
    let bkg: Image;
    var x_def: Int = 0;
    var y_def: Int = 0;
    let x_def_control: Double = 3.0;
    let y_def_control: Double = 65.0;
    var posex: Int = 0;
    var posey: Int = 0;

    var score = 0
    var score1 = 0
    var score2 = 0

    var CanvasSize: Size;

    let charSizeW = 120
    let charSizeH = 80
    
    init() {

        guard let furzeURL = URL(string:"https://codermerlin.com/users/krishna-shah/Digital%20Portfolio/CS-I/Projects/ISP/BlueMan.png") else {
            fatalError("Failed to create URL for Furze")
        }
        furze = Image(sourceURL:furzeURL)


        guard let bkgURL = URL(string:"https://codermerlin.com/users/krishna-shah/Digital%20Portfolio/CS-I/Projects/ISP/BackGround.jpg") else {
            fatalError("Failed to create URL for Furze")
        }
        bkg = Image(sourceURL: bkgURL)
        
        // Using a meaningful name can be helpful for debugging
        
        
       

        CanvasSize = Size()
        
        super.init(name:"Person1")
    }

    override func setup(canvasSize: Size, canvas: Canvas) {
        // Position the ellipse at the center of the canvas
        self.CanvasSize = canvas.canvasSize!
        
        self.x_def = Int((x_def_control/100.0) * Double(self.CanvasSize.width))
        self.y_def = Int((y_def_control/100.0) * Double(self.CanvasSize.height))
        self.posex = self.x_def
        self.posey = self.y_def
        furze.renderMode = .destinationRect(Rect(topLeft:Point(x:x_def, y:y_def), size:Size(width:self.charSizeW, height:self.charSizeH)))
        canvas.setup(furze, bkg);
        canvas.render(furze, bkg);
    }

    override func teardown() {
        
    }
    
    override func boundingRect() -> Rect {
        return Rect(size: Size(width: Int.max, height: Int.max))
    }

    func CharBound() -> Rect {
        return Rect(topLeft:Point(x:posex, y:posey), size:Size(width:self.charSizeW, height:self.charSizeH))
    }

    override func render(canvas:Canvas) {
        if furze.isReady || bkg.isReady {
            self.CanvasSize = canvas.canvasSize!
            self.x_def = Int((x_def_control/100.0) * Double(self.CanvasSize.width))
            self.y_def = Int((y_def_control/100.0) * Double(self.CanvasSize.height))
            let fillStyle = FillStyle(color:Color(.white))
            let fillStyle2 = FillStyle(color:Color(.black))
            bkg.renderMode = .destinationRect(Rect(topLeft:Point(x:0, y:0), size:canvas.canvasSize!))
            canvas.render(fillStyle, bkg)
            furze.renderMode = .destinationRect(Rect(topLeft:Point(x:posex, y:posey), size:Size(width:self.charSizeW, height:self.charSizeH)))
            canvas.render(fillStyle2, furze)
        }
    }

    func velocity(xvel: Int, yvel: Int) -> Int {
        var xvel = xvel
        var yvel = yvel
        //var comp_x = self.posex + x_def
        //var comp_y = self.posey + y_def
        // Form a bounding rectangle around the canvas
        let canvasBoundingRect =  Rect(topLeft:Point(x:0, y:0), size:Size(width:self.CanvasSize.width, height:self.CanvasSize.height))

        // Form a bounding rect around the ball (ellipse)
        // After this is working, move the code to your boundingRect() function
        let ballBoundingRect = self.boundingRect()
        // Determine if we've moved outside of the canvas boundary rect

        let tooFarRight = posex < canvasBoundingRect.topLeft.x
        let tooFarLeft = posex > canvasBoundingRect.topRight.x


        //        print(comp_y, canvasBoundingRect.bottomLeft.y)
        let tooFarUp = posey < canvasBoundingRect.topLeft.y/***** THIS IS AN EXERCISE LEFT TO THE READER *****/
        let tooFarDown = posey > canvasBoundingRect.bottomLeft.y/***** THIS IS AN EXERCISE LEFT TO THE READER *****/
          // If we're too far to the left or right, we bounce the x velocity
        if tooFarLeft || tooFarRight {
            xvel = -xvel-20
        }
        if tooFarDown {
            yvel = -yvel-20
        }

        if tooFarUp {
            self.score += 1
            self.posex = self.x_def
            self.posey = self.y_def
            print("\(x_def) | \(y_def)")
            return self.score
        }
        
        self.posex += xvel;
        self.posey += yvel;
        return self.score
    }
}
