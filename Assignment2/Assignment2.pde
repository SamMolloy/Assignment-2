
//instantiating all of the objects that will be used in the program
Player player = new Player();
Enemy enemy = new Enemy();
Menu menu = new Menu();
Border border = new Border();
Collect collect = new Collect();
Die die = new Die();
Score score = new Score();

//variable to let the game know when to begin
int start = 0;

//array list to store all the enemies. (Polymorphism used here as it includes 2 different types of enemy
ArrayList<Enemy> enemies = new ArrayList<Enemy>();

//variables for a time interval that speeds up the enemies as the game goes on
float checktime, interval;

void setup()
{
  size(500, 500);
  smooth();
  
  //setting up a time interval to increase enemy speed every 8 seconds
  checktime = millis();
  interval = 8000;// 8 second time interval
  
  //for loop that starts the game off with 3 enemies
  for (int i = 0; i<3; i++)
  {
    enemies.add(new Enemy());
  }//end for

}//end setup

void draw()
{
  background(0);
  
  //starts the game if the up arrow is pressed
  if(start == 0)
  { 
    menu.display();
  }
  else
  {
    player.run();
    die.display();
    die.collide();
    score.run();
    
    //for loop to run all the enemy objects
    for (int i = 0; i < enemies.size(); i++) 
    {
      Enemy enemy = enemies.get(i);
      enemy.run();
      
      //sets a max of 15 enemies 
      if(enemies.size() > 15)
      {
        enemies.remove(0);
      }
    }//end for
    
    addSpeed();
    collect.run();
    border.display();
  }//end else
  
  //activates the game over splash screen if the lives reach 0Ass
  if(die.lives <= 0)
  {
    die.GameOver();
  }
}//end draw

//increases the enemy speed by 0.05 every 8 seconds
void addSpeed()
{
  if(millis() > checktime+interval)
  {
    checktime = millis();
    enemy.speed = enemy.speed + 0.05;
  }
}//end addSpeed

//keyPressed to detect when the game is started from the menu
void keyPressed()
{
  if(key == CODED)
  {    
    if(keyCode == UP)
    {
      start = 1;
    }//end inner if
    else if(key == SHIFT)
    {
      start = 0;
    }
    
  }//end outer if
}