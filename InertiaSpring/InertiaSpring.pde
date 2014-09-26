import controlP5.*;

// declare global interface variables
static final int WINDOWWIDTH = 1080/2;  // width of the app window
static final int WINDOWHEIGHT = 1920/2;  // width of the app window
static final int LARGEFONT = int(windowHeight/20);  // text size 1 font size (large text)
static final int SMALLFONT = int(windowHeight/30);  // text size 2 (small text)
static final int HEAVYLINE = int(windowWidth/150);  // heavy line weight in pixels
static final int LIGHTLINE = int (windowWidth/200);  // light line weight in pixels
static final int MASSACROSS = int(windowWidth*0.7);  // horizontal position of the mass/spring combination
static final int STARTHEIGHT = int(windowHeight*0.25);  // starting height of the top of the mass

// declare global behaviour variables
static final float RANDOMNESS = 0;  //randomness in acceleration
int startTime;  // starting time in milliseconds
int lastTime;  // time the last position update was performed in milliseconds

static final float LENGTHSCALE = 1;      // length conversion factor (metres/pixel)

Mass mass = new Mass(5.4, WINDOWWIDTH/70, MASSACROSS, STARTHEIGHT, 0, 0, true, false);  // declare and instantiate a mass with initial mass in kg
//Spring spring = new Spring(35.0, 

void setup(){
 size (WINDOWWIDTH,WINDOWHEIGHT);  //some proportion of Galaxy S5 screen resolution
}

void draw(){
  // check if mouse is over any draggable objects
  mass.mouseOver(mouseX, mouseY);
  
  // update object positions
  
  // draw screen
  mass.display();
 
 
 // 
}
