/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */
class Spaceship extends Mover { 
  boolean ROTATELEFT, ROTATERIGHT;
  boolean MOVEFORWARD;

  Spaceship(float x, float y) {
    super(x, y);
  }

  Spaceship(float x, float y, float speed, float direction) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    myColor = 225;
    radius = 0.0;
  }



  void show() {

    if (ROTATELEFT) {
      direction -= 1.0;
    } else if (ROTATERIGHT) {
      direction += 1.0;
    }

    if (MOVEFORWARD == true) {
      if (speed < 3) {
        speed += .03;
      }
    } else {
      if (speed > 0) {
        speed -= 0.5;
      }
      if (speed < 0) {
        speed = 0;
      }
    }

    smooth();

    //beginning of the wings

    pushMatrix();
    fill(#6D4F81);
    beginShape();
    vertex(33, 60);
    vertex(-10, 80);
    vertex(-8, 100);
    vertex(37, 90);
    endShape();
    fill(#832253);
    ellipse(-8, 90, 10, 35);
    popMatrix();

    pushMatrix();
    fill(#6D4F81);
    beginShape();
    vertex(70, 60);
    vertex(130, 80);
    vertex(130, 100);
    vertex(70, 90);
    endShape();
    fill(#832253);
    ellipse(130, 90, 10, 35);
    popMatrix();



    //end of wings
    //main white part of the ship

    pushMatrix();
    noFill();
    beginShape();
    vertex(55.5, -20);
    bezierVertex(90, 0, 80, 45, 78, 90);
    bezierVertex(57.5, 105, 40, 90, 37, 90);
    bezierVertex(37, 90, 15, 5, 55.5, -20);
    fill(255);
    endShape();
    popMatrix();

    pushMatrix();
    beginShape();
    vertex(55.5, 0);
    bezierVertex(55.5, 0, 47.5, -10, 39, 0 );
    bezierVertex(39, 0, 40.5, -10, 55.5, -20);
    bezierVertex(55.5, -20, 68.5, -20, 75, 0);
    bezierVertex(75, 0, 63.5, -10, 55.5, 0);
    fill(#41CE60);
    endShape();
    popMatrix();

    //end of the main part of the ship
    //beginning of the cockpit

    pushMatrix();
    beginShape();
    line(69, 90, 45, 90);
    vertex(69, 90);
    fill(#EAEAEA);
    bezierVertex(69, 90, 57, 0, 45, 90);
    endShape();

    fill(#A5E3D7);
    arc(55.5, 70, 15, 15, radians(180), radians(360), CHORD);
    fill(#6D4F81);
    ellipse(55.5, 95, 5, 40);
    popMatrix();

    //end of cockpit
  }
  
  

}
