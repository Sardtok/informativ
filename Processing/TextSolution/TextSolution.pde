int a;
float b;
String c;

void setup() {
  textAlign(LEFT, TOP);
  a = 5;
  b = 5;
  c = "Fem";
  text("" + a, 0, 0);
  text("" + b, 0, 12);
  text(c, 0, 24);
  
  a++;
  b += a;
  c = c + "ti";
  text("" + a, 0, 36);
  text("" + b, 0, 48);
  text(c, 0, 60);
}

