void setup()
{ size (500,500);
  noLoop();
}
void draw()
{ background (0);
 int sum = 0;
for(int y = 0; y <= 500; y += 174)
        {
          for(int x = 0; x <= 500; x += 174)
          {
          Die bob = new Die(x, y);
          sum += bob.rolling;
          bob.show() ;
          }
        }
      
    fill (0);
    text("Sum: " + sum, 230, 10);   
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{int rolling, myX, myY;//variable declarations here
  
   Die(int x, int y) //constructor
  {
      rolling = (int)((Math.random()*6)+1);
      myX = x;
      myY = y ;    //variable initializations here
  }
  void roll()
  {
      rolling  = (int)((Math.random()*6)+1); //your code here
  }
  void show()
  {
    fill (230, 215, 255);
    rect (myX,myY,150,150);
    
    fill(255);
    if (rolling == 1){
    ellipse (myX+75,myY+75,30,30);
    }
     if (rolling == 2){
     ellipse (myX+37.5,myY+37.5,30,30);
     ellipse (myX+112.5,myY+112.5,30,30);
    }
    if (rolling == 3){
    ellipse (myX+37.5,myY+37.5,30,30);
    ellipse (myX+75,myY+75,30,30);
    ellipse (myX+112.5,myY+112.5,30,30);
    }
    if (rolling == 4) {
     ellipse (myX+37.5,myY+37.5,30,30);
      ellipse(myX+37.5,myY+112.5,30,30);
     ellipse (myX+112.5,myY+112.5,30,30);
     ellipse (myX+112.5,myY+37.5,30,30);
    }
      if (rolling == 5) {
     ellipse (myX+75,myY+75,30,30); 
      ellipse (myX+37.5,myY+37.5,30,30);
      ellipse(myX+37.5,myY+112.5,30,30);
     ellipse (myX+112.5,myY+112.5,30,30);
     ellipse (myX+112.5,myY+37.5,30,30); 
    }
    if (rolling == 6) {
      ellipse (myX+37.5,myY+75,30,30); 
      ellipse (myX+112.5,myY+75,30,30);
      ellipse (myX+37.5,myY+37.5,30,30);
      ellipse(myX+37.5,myY+112.5,30,30);
     ellipse (myX+112.5,myY+112.5,30,30);
     ellipse (myX+112.5,myY+37.5,30,30);
    }
    
  }
}
