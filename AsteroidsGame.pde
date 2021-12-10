Star [] bob = new Star [100];
Spaceship fly = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup() 
{
  size (500,500);
  for (int x = 0; x<bob.length; x++)
    bob[x] = new Star();
  for (int x = 0; x<10; x++)
    rocks.add(new Asteroid());
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
      fly.accelerate(0.2);
    }
    if(key == 's' || key == 'S'){
      fly.accelerate(0.2);
    }
    if(key == 'd' || key == 'D'){
      fly.turn(10);
    }
  }
  
  fly.move();
  fly.show();
  
  //asteroid
  for (int x=0; x<rocks.size(); x++){
    rocks.get(x).show();
    rocks.get(x).move();
    float d = dist((float)fly.getX(), (float)fly.getY(), (float)rocks.get(x).getXcenter(), (float)rocks.get(x).getYcenter());
    if (d < 10)
      rocks.remove(x);
  }
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
