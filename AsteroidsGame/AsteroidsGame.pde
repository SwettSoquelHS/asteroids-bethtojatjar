//* * * * * * * * * * * * * * * * * * * * * * * 
float x_pos, y_pos;
Star[] stars;
Spaceship player1;
Asteroid[] asters;

/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
public void setup() {
  size(1500, 1000);
  background(0);

  //initialize your asteroid array and fill it

  player1 = new Spaceship(width/2, height/2, 1, 0);



  stars = new Star[100];
  for (int i = 0; i < stars.length; i++) {

    int x = (int)(width * Math.random());
    int y = (int)(height * Math.random());
    int r = (int)(4 * Math.random()) + 2;
    stars[i] = new Star(x, y, r);
  }

  asters = new Asteroid[17];
  for (int i = 0; i < asters.length; i++) {

    float x = (float)(width * Math.random());
    float y = (float)(height * Math.random());
    float speed = (float)(2 * Math.random());
    float direction = (float)(360 * Math.random());
    float spin = (float)(5 * Math.random());
    asters[i] = new Asteroid(x, y, speed, direction,spin);
  }
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
public void draw() {
  //your code here
  background(0);

  //Draw Starfield first 
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  if (ROTATE_LEFT) {
    player1.rotateShip();
  }
  
  if (ROTATE_RIGHT) {
    player1.rotateShip();
  } 
  
  if (MOVE_FORWARD) {
    player1.accelShip(.5);
  }
  
  if(!MOVE_FORWARD){
    player1.accelShip(-2);
  }
  
  
  

  player1.update();
  player1.show();

  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment


  //Check for asteroid collisions against other asteroids and alter course
  if(int i = 0; i < asters,length;i++){
    if(int j = 0;j < asters.length; i++){
     
      }
    }

  //Draw asteroids
  for (int i = 0; i < asters.length; i++) {
    asters[i].update();
    asters[i].show();
  }




  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
}
