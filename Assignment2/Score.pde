class Score extends Die
{
  int score = 0;
  
  
  void run()
  {
    display();
    collide();
  }
  
  void display()
  {
    String s1 = "Score: " + score;
    text(s1, 385, 490);
  }
  
  //method to detect collision of player and the green object
  void collide()
  {
    //checks the distance between the player and the green object
    float distance = dist(player.x, player.y, collect.randomX, collect.randomY);
    
    if(distance <= 15)
    {
      //resets the green objects position
      collect.randomX = random(40, 460);
      collect.randomY = random(40, 460);
      collect.randMove = random(1);
      
      score++;
      
     float rand = random(1);
     //if score is above 3 it will add either a normal enemy or a smaller and faster orange enemy
      if(rand < 0.5)
      {
        enemies.add(new Enemy2()); 
      }//end if
      else
      {
       enemies.add(new Enemy());
      }//end else
    }//end outer if
    
  }//end collide
  
}//end Score