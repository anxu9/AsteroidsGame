Star [] bob = new Star [100];
Spaceship fly = new Spaceship();
public void setup() 
{
  size (500,500);
  for (int x = 0; x<bob.length; x++)
    bob[x] = new Star();
}
public void draw() 
{
  background (0);
  for (int x = 0; x <bob.length; x++){
    bob[x].show();
  }
  if (keyPressed){
    if (key == 'a' || key == 'A'){
      fly.turn(-10);
    }
    if(key == 'w' || key == 'W'){
      fly.accelerate(0.4);
    }
    if(key == 'd' || key == 'D'){
      fly.turn(10);
    }
  }
  
  fly.move();
  fly.show();
}

public void keyPressed(){
    if(key == 'h' || key == 'H'){
      fly.setXcenter(Math.random()*500);
      fly.setYcenter(Math.random()*500);
      fly.setXspeed(0);
      fly.setYspeed(0);
      fly.turn(Math.random()*360);
    }  
}
