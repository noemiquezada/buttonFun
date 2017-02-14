# Button Fun
### Noemi Quezada
This is my implementation to the Button Fun challenge. 

I am running Xcode 8.2.1 version and coded in Swift 3

## Requirements
The requirements for the challenge was: 
* Universal iOS App
* No Status Bar
* Name 'Button Fun'
* Handle all device orientations
* Display a grid of 40px * 40px squares
* When a user presses a square, change the color to a new one
* Make the code as reusable as possible.
* Bonus Points: Not use UIButtons


## Approach
**UIColor+RandomColor.swift**
I extended the UIColor class to include a static method that would return a random UIColor.

**Block.swift**
Created a Block class, that extends the UIView class which will represent a grid cell. The Block class sets a random color and has a tap gesture recognizer. 

**BlockSource.swift**
The Block Source class is the data model in this application that holds an array of Blocks.

**Constants.swift**
Holds the Height and Width of the blocks

**ViewController.swift**
The ViewController is responsible of presenting the view. During viewWilLayoutSubviews, we are able to get the height and width of the container and calculate the amount of rows and columns we need for the grid and initialize the BlockSource with rows*columns amount of blocks. Once the Block Source is populated we create a grid using Nested Stack Views. 

**Info.plist**
I added two new values to the Info.plist to hide the status bar. 
