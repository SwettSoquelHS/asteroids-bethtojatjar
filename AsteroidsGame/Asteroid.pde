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

  Asteroid(float x, float y, float speed, float direction, float spin) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.spin = spin;
    myColor = 225;
    radius = 0.0;
  }
  
  
  
  void show(){
    spin += .5;
    pushMatrix();
    translate (x, y);
    rotate(radians(spin));
    fill(#4D6226);
    beginShape();
    vertex(0,0);
    vertex(15,90);
    vertex(30,75);
    vertex(45,50);
    vertex(50,35);
    vertex(35,-20);
    vertex(16,-40);
    vertex(5,-10);
    vertex(0,-10);
    vertex(0,0);
    endShape();
    popMatrix();
    
  }
  
}
