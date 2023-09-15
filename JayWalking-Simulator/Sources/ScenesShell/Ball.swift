
import Scenes
import Igis

class Ball: RenderableEntity, EntityMouseClickHandler {
    let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    let strokeStyle = StrokeStyle(color:Color(.orange))
    let fillStyle = FillStyle(color:Color(.red))
    let lineWidth = LineWidth(width:5)

    var velocityX : Int = 0
    var velocityY : Int = 0

    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Ball")
    }

    override func setup(canvasSize: Size, canvas: Canvas) {
        // Position the ellipse at the center of the canvas
        ellipse.center = canvasSize.center
        dispatcher.registerEntityMouseClickHandler(handler:self)
    }

    override func teardown() {
        dispatcher.unregisterEntityMouseClickHandler(handler:self)
    }

    override func boundingRect() -> Rect {
        return Rect(size: Size(width: Int.max, height: Int.max))
    }
    

    func onEntityMouseClick(globalLocation: Point) {
        ellipse.center = globalLocation
        print(globalLocation)
    }

    
    func changeVelocity(velocityX:Int, velocityY:Int) {
        self.velocityX = velocityX
        self.velocityY = velocityY
    }

    override func calculate(canvasSize: Size) {
        self.ellipse.center += Point(x: velocityX, y: velocityY)
        //let a = self.applyTransforms(toPoint: Point(x:60, y:0))        
    }

    override func render(canvas:Canvas) {
        let rect = Rect(topLeft:Point(x:0, y:0), size:Size(width:1920, height:1080))
        let rectangle = Rectangle(rect:rect)
        let fillStyle = FillStyle(color:Color(.black))
        canvas.render(fillStyle, rectangle)
        self.changeVelocity(velocityX: 0, velocityY: 2)
        canvas.render(strokeStyle, fillStyle, lineWidth, ellipse)
    }
}
