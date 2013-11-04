float x;
float y;

void setup() {
  size(800, 600);
  x = width / 2;
  y = height / 2;
  fill(96, 128, 192);
  smooth();
}

void draw() {
  background(255);
  
  x++;
  y--;
  
  ellipse(x, y, 20, 20);
}

void mouseClicked() {
  x = mouseX;
  y = mouseY;
}

