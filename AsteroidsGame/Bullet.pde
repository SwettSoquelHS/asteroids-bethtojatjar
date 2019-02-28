
class Bullet extends Mover {

  protected int live;

  Bullet(float x, float y) {
    super(x, y);
  }

  Bullet(float x, float y, float speed, float direction) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    live = 100;
  }

  void show() {
    if (live > 0) {
      pushMatrix();
      translate(x, y);
      fill(#B6D10D);
      ellipse(0, 0, 15, 15);
      popMatrix();
    }
  }

  void update() {
    live--;
    super.update();
  }

  boolean isAlive() {
    return false;
  }
}
