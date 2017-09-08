class Enemy
{
  //variable used for the movement of the enemy
    int directionX = 0, directionY = 1;
    float speed=1.75; 
    float randomX = random(40, 460), randomY = random(40, 460);
    float randMove = random(1);
 
    
  Enemy()
  {
  }
  
  void run()
  {
    display();
    move();
  }
  
  
  void display()
  {
    //Drawing the enemy model;
    noStroke();
    fill (255, 0, 0); 
    rect (randomX, randomY, 20, 20, 5);
  }
  
  
  //setting the enemies random movement
  void move()
  {
    
    //setting the enemies movement
    randomX = randomX+speed*directionX;
    randomY = randomY+speed*directionY; 
       
    //stopping the enemy fromm moving off the screen
    if (randomX > 460)
    {
      randomX = 40;
    }//end if
    if (randomY > 460)
    {  
      randomY = 40;
    } //end if 
    if (randomX < 40)
    {
      randomX = 460;
    }//end if
    if (randomY < 40)
    {   
      randomY = 460;
    } //end if 
    
    //randomsing movement
    if(randMove <.25)
    {
      directionX = 1;
      directionY = 0;
    }
    if(randMove > .25 && randMove< 0.5)
    {
      directionX = -1;
      directionY = 0;
    }
        if(randMove >.5 && randMove < 0.75)
    {
      directionY = 1;
      directionX = 0;
    }
        if(randMove >.75)
    {
      directionY = -1;
      directionX = 0;
    }
  }

  
}