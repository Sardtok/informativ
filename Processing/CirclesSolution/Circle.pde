class Circle {
  float x, y;
  
  Circle(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void draw() {
    y++;
    ellipse(x, y, 20, 20);
  }
}

