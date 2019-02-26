class Star {
  float x_pos;
  float y_pos;
  float rad;
  
  public Star(float x, float y, float radius){
  x_pos = x;
  y_pos = y;
  rad = radius; 
  }
  
  void show(){
    pushMatrix();
    translate (x_pos, y_pos);
    fill(#C2D6D2);
    ellipse(0, 0, rad, rad);
    popMatrix();
    }
  }
