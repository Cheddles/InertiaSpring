// declare global interface variables
int windowWidth = 1080/2;  // width of the app window
int windowHeight = 1920/2;  // width of the app window
int largeFont = int(windowHeight/20);  // text size 1 font size (large text)
int smallFont = int(windowHeight/30);  // text size 2 (small text)
int heavyLine = int(windowWidth/150);  // heavy line weight in pixels
int lightLine = int (windowWidth/200);  // light line weight in pixels
int massAcross = int(windowWidth*0.7);  // horizontal position of the mass/spring combination
int startHeight = int(windowHeight*0.25);  // starting height of the top of the mass

// declare global behaviour variables
float randomness = 0;  //randomness in acceleration
int startTime;  // starting time in milliseconds
int lastTime;  // time the last position update was performed in milliseconds

float lengthScale = 1;      // length conversion factor (metres/pixel)

Mass mass = new Mass(5.4, windowWidth/70, massAcross, startHeight, 0, 0, true, false);  // declare and instantiate a mass with initial mass in kg
//Spring spring = new Spring(35.0, 

void setup(){
 size (windowWidth,windowHeight);  //some proportion of Galaxy S5 screen resolution
}

void draw(){
  // check if mouse is over any draggable objects
  mass.mouseOver(mouseX, mouseY);
  
  // update object positions
  
  // draw screen
  mass.display();
 
 
 // 
}
