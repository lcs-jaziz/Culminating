//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */



// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

let scale = 20

//Position pen
t.penUp()
t.left(by: 90)
t.forward(steps: 1 * scale)
t.right(by: 90)
t.penDown()

//Start Drawing
//t.currentPosition()
//    t.currentHeading()
//t.forward(steps: 3 * scale)
//t.right(by: 90)
//t.forward(steps: 1 * scale)
//t.left(by: 135)
//t.forward(steps: Int(2.0 * sqrt(2.0) * Double(scale)))
//t.left(by: 90)
//t.forward(steps: Int(2.0 * sqrt(2.0) * Double(scale)))
//t.left(by: 135)
//t.forward(steps: 1 * scale)
//t.right(by: 90)
//t.forward(steps: 3 * scale)
//t.left(by: 90)
//t.forward(steps: 2 * scale)
//t.left(by: 90)
//t.currentPosition()
//t.currentHeading()

//Make arrow Function
func drawArrow() {
    t.currentPosition()
    t.currentHeading()
    t.penDown()
    t.forward(steps: 3 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 135)
    t.forward(steps: Int(2.0 * sqrt(2.0) * Double(scale)))
    t.left(by: 90)
    t.forward(steps: Int(2.0 * sqrt(2.0) * Double(scale)))
    t.left(by: 135)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 3 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)
    t.penUp()
    t.currentPosition()
    t.currentHeading()
}
func getToNextArrow () {
    drawArrow()
    t.forward(steps: 5 * scale)
}

func movingUp () {
    t.penUp()
    t.left(by: 180)
    t.forward(steps: 30 * scale)
    t.right(by: 90)
    t.forward(steps: 4 * scale)
    t.right(by: 90)
    t.penDown()
}

//Start looping

   for _ in 1...8
{
       for _ in 1...6 {
           getToNextArrow()
       }
       movingUp()
   }
    
  



/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
