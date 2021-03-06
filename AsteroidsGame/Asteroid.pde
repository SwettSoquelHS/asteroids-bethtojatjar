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

  Asteroid(float x, float y, float speed, float direction, float spin, float radius,int size) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.spin = spin;
    this.radius = radius;
    this.size = size;
  }



  void show() {
    pushMatrix();
    translate (x, y);
    scale(size);
    rotate(radians(spin));
    fill(#4D6226);
    ellipse(0,0,radius,radius);
    beginShape();
    vertex(0, 0);
    vertex(20, 0);
    vertex(25, -10);
    vertex(32, -20);
    vertex(22, -30);
    vertex(-10, -18);
    vertex(-10, -8);
    vertex(0, 0);
    endShape();

    popMatrix();
    
  }
}
