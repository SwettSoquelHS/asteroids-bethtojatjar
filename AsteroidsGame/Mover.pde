
interface Movable {
  /*
    Return the x location of the Movable
   */
  float getX();

  float getY();


  float getDirection();

  /*
   Return the speed of the Movable.
   The speed you use is a relative value and will
   feel different for different frame rates. For example,
   if frameRate is set to 48, then a speed of 1 would move 48 pixels 
   per second.
   */
  float getSpeed();

  /*
   Return the radius of influence. If you could draw a circle
   around your object, then what would this radius be.
   */
  float getRadius();

  /* 
   Sets the direction of the Movable
   */
  void setDirection(float newDirectionInDegrees);

  /* 
   Sets the speed of the Movable
   */
  void setSpeed(float newSpeed);

  /*
   Update the internals of the instance
   */
  void update(); 

  /*
    Display the isntance
   */
  void show();

  /*
   Return true if the instance of Movable is "colliding with" 
   the movable referred to by object.  *Note* An object should not
   be able to collide with iteself.
   */
  boolean collidingWith(Movable object);
}

//END OF Movable Interface




/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 Abstract base class Mover 
 */
abstract class Mover implements Movable {

  protected float x, y;
  protected float speed;
  protected float direction;
  protected int myColor;
  protected float radius;
  protected float spin;

  /*
    Default Mover, not actually moving and directionless
   */
  Mover(float x, float y) {
    //The line below shows how we can 
    //link this constructor to the constructor below through "this"
    this(x, y, 0, 0, .4);
  }
  Mover() {
    super();
  }
  /*
    Mover constructor specifying x, y position along with its speed and
   direction (in degrees)
   */
  Mover(float x, float y, float speed, float direction,  float spin) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.spin = spin;
    myColor = 225;
    radius = 0.0;
  }

  /*
    Most of your movable objects should follow this pattern.
   */
  void update() {
    x = x + speed*(float)Math.cos(radians(direction));
    y = y + speed*(float)Math.sin(radians(direction));
    spin = spin + (float)Math.sin(radians(direction));

    if (x >= width + 50) {
      x = -20;
    } else if (x <= -50) {
      x = width + 50;
    }

    if (y >= height + 50) {
      y = -50;
    } else if (y <= -50) {
      y = height + 50;
    }
  }



  /*
    Save this for your subclasses to override.
   but notice how it is tagged with abstract, meaning 
   it is incomplete. (It's like an I.O.U.)
   */
  abstract void show();


  /*
    TODO: Part 4: Implement collision detection
   */
  boolean collidingWith(Movable m) {
    //Can't collide with yourself
    if (this == m) {
      return false;
    }
    
    //How far away are OUR centers
    float d = dist(x, y, m.getX(), m.getY());    
    
    //If both of our radi added are greater than or equal to d, then we have collided
    if ((radius + m.getRadius()) >= d) {
     return true;  
    }
    return false;
 }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  float getDirection() {
    return direction;
  }

  float getSpeed() {
    return speed;
  }

  float getRadius() {
    return radius;
  }

  void setDirection(float newDir) {
    direction = newDir;
  }

  void setSpeed(float newSpeed) {
    speed = newSpeed;
  }
}
