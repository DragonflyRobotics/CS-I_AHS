import Scenes
import Foundation
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {
    
    let bkg: Image;

      init() {
          // Using a meaningful name can be helpful for debugging
          guard let furzeURL = URL(string:"https://codermerlin.com/users/krishna-shah/Digital%20Portfolio/CS-I/Projects/ISP/BackGround.png") else {
              fatalError("Failed to create URL for Furze")
          }
          bkg = Image(sourceURL: furzeURL)
          
          
          super.init(name:"Background")
      }
      override func setup(canvasSize:Size, canvas:Canvas) {
          if bkg.isReady {
              let rect = Rect(topLeft:Point(x:0, y:0), size:Size(width:1920, height:1080))
              let rectangle = Rectangle(rect:rect)
              let fillStyle = FillStyle(color:Color(.white))
              canvas.render(fillStyle, rectangle)  
              //canvas.render(bkg)
          }
      }
}
