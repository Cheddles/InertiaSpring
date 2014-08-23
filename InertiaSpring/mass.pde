class Mass{
  float mass;  // mass in kg
  float xVelocity;  // velocity to the right in metres per second
  float yVelocity;  // downward velocity in metres per second
  int xLocationPixels;  // x-coordinate of the top of the mass
  int yLocationPixels; // y-coordinate of the top of the mass
  boolean mouseOver=false;  // is the mouse over the mass?
  boolean dragging=false;  // is the mass currently being dragged?
  int dragOffsetX;  // horizontal pointer offest when being dragged
  int dragOffsetY;  // vertical pointer offset when being dragged
  boolean constrainedX;  // TRUE if the object cannot move horizontally
  boolean constrainedY;  // TRUE if the object cannot move vertically
  int radius;  //radius in pixels
  Slider slider = new Slider(2.0, 30);
  
  Mass(float massIn, float PixPerkg, int x1, int y1, float xVel, float yVel, boolean xConstrained, boolean yConstrained){
    //most variables are simply shifted here to make available to whole class
    mass = massIn;
    radius = int (mass*PixPerkg);
    xLocationPixels=x1;
    yLocationPixels=y1;
    xVelocity=xVel;
    yVelocity=yVel;
    constrainedX=xConstrained;
    constrainedY=yConstrained;
  }
  
  void display(){
    background(255);
    ellipseMode(RADIUS);
    noStroke();
    fill(150);
//    stroke(0);
    if(mouseOver) fill(200); //stroke(lightLine);
    if (dragging) fill(0);
    ellipse(xLocationPixels, yLocationPixels, radius, radius);
  }
  
  void mouseOver(int x, int y){
    float distance = pow(pow(float(x-xLocationPixels),2)+pow(float(y-(yLocationPixels+radius)),2),0.5);
    if (distance<=radius) mouseOver=true;
    else mouseOver=false;   
  }
}
