class Slider{
  //(float minValue, float maxValue)
  
    void mouseOver(int x, int y){
    float distance = pow(pow(float(x-xLocationPixels),2)+pow(float(y-(yLocationPixels+radius)),2),0.5);
    if (distance<=radius) mouseOver=true;
    else mouseOver=false;   
  }

}
