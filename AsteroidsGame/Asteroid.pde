/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShape(), vertex(), and endShape()"
 to render the asteroid. */

class Asteroid extends Mover {   

  Asteroid(float x, float y) {
    super(x, y);
  }

  Asteroid(float x, float y, float speed, float direction) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    myColor = 225;
    radius = 0.0;
  }
  
  void show(){
    pushMatrix();
    translate (x, y);
    rotate(radians(direction));
    fill(#4D6226);
    beginShape();
    vertex(0,0);
    vertex(10,-5);
    vertex(20,-10);
    vertex(15,-20);
    vertex(0,-25);
    vertex(-10,-25);
    vertex(-15,-15);
    vertex(-20,-5);
    vertex(-10,5);
    endShape();
    popMatrix();
    
  }
}
