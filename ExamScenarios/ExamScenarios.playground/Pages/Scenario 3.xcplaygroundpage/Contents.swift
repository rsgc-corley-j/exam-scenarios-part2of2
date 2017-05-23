//: [Next](@next)
//: # Scenario 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![Talking Heads](TalkingHeads.png "Talking Heads")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)


canvas.fillColor = Color.orange


canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)


canvas.lineColor = Color.white

for y in stride(from: 0, to: 400, by: 44){
for x in stride(from: 0, to: y, by: 44){
    
for t in stride(from: 0, to: 44, by: 1){
canvas.drawLine(fromX: 0 + t + x, fromY: 200 + y, toX: 44 + x, toY: 244 - t + y)
}
}
}

canvas.lineColor = Color.yellow
for y in stride(from: 0, to: 400, by: 44){
    for x in stride(from: y, to: 400, by: 44){
        
        for t in stride(from: 0, to: 44, by: 1){
            canvas.drawLine(fromX: 0 + t + x, fromY: 200 + y, toX: 44 + x, toY: 244 - t + y)
        }
    }
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
