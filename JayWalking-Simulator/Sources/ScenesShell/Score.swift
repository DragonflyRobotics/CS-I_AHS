import Scenes
import Igis

/*
 This class is responsible for rendering the background.
 */


class Score : RenderableEntity {

    var text : Text
    var text2 : Text

    let location: Point = Point(x: 450, y: 700)
    let location2: Point = Point(x: 450, y: 900)
    var CanvasSize: Size;
    
    init() {
        // Using a meaningful name can be helpful for debugging

        text = Text(location:location, text:" ")
        text2 = Text(location:location2, text:" ")
        self.CanvasSize = Size()
        
        super.init(name:"Score")
    }
    override func setup(canvasSize:Size, canvas:Canvas) {
        self.CanvasSize = canvas.canvasSize!
        canvas.render(text, text2)

    }
    override func render(canvas: Canvas) {
        self.CanvasSize = canvas.canvasSize!
        let rect = Rect(topLeft: Point(x:0,y:0), size: canvas.canvasSize!)
        text.location = Point(x: ((2*self.CanvasSize.width)/6), y: ((self.CanvasSize.height*8)/9))
        text2.location = Point(x: ((8*self.CanvasSize.width)/20), y: ((self.CanvasSize.height*19)/20))
        let rectangle = Rectangle(rect:rect)
        let fillStyle = FillStyle(color:Color(.white))
        let fillStyle2 = FillStyle(color:Color(.black))
//        canvas.render(fillStyle, rectangle)
        canvas.render(fillStyle2, text, text2)
    }
    func updateScore(s1: Int, s2: Int, level: String) {
        if s1 > s2 {
            text.text = "\(s1) <= \(s2)"
        } else if s2 > s1 {
            text.text = "\(s1) => \(s2)"
        } else if s2 == s1 {
            text.text = "\(s1) <=> \(s2)"
        } else {
            text.text = "ERROR"
        }
        text2.text = "Current Level: \(level)"
        text.font = "100pt Arial"
        text2.font = "30pt Arial"
    }
}
