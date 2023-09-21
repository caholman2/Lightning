int startX = 150;
int startY = 50;
int endX = 150;
int endY = 50;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0);
}

void draw()
{
  
  fill(0, 150, 150);
  arc(150,50,150,100,PI,2*PI);
  
  stroke((int)(Math.random()*50), (int)(Math.random()*150+100), (int)(Math.random()*150+100));
  
  if(endX <= 300){
    endX = startX + (int)(Math.random()*30-15);
    endY = startY + (int)(Math.random()*(Math.random()*50));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  
  noStroke();
  fill(0,5);
  rect(0,0,300,300);
  
}

void mousePressed()
{
  startX = (int)(Math.random()*70+115);
  endX = startX;
  startY = 50;
  endY = 50;
}
