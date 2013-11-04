float x;
float y;

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  if (mousePressed) {
    line(x, y, mouseX, mouseY);
  }
  
  x = mouseX;
  y = mouseY;
}

