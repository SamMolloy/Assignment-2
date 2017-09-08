class Enemy2 extends Enemy
{
  //setting the faster speed of the new enemy
    float speed = 2.75;
  
    void display()
  {
    //Drawing the enemy model;
    noStroke();
    fill (255, 165, 0); 
    rect (randomX, randomY, 15, 15, 5);
  }
  
  
  
  
  
  
  
  
  
  
}