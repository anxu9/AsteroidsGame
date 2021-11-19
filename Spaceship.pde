class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners [0]= -10;
    yCorners [0]= -10;
    xCorners [1]= 0;
    yCorners [1]= 0;
    xCorners [2]= -10;
    yCorners [2]= 8;
    xCorners [3]= 20;
    yCorners [3]= 0;
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
  public void setXcenter(double x){
    myCenterX = x;
  }
  public void setYcenter(double y){
    myCenterY = y;
  }
}
