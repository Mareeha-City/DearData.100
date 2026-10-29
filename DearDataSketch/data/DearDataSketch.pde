void setup() {
  background(225);
  size(800,800);
}


void draw() {
  drawShape();
}

void drawShape() {
  for (int row=0; row<10; row = row+1)
  {  

    for (int col=0; col<10; col = col+1)
    { 
      circle(20 + col*40, 20 + row*40, 30);
    }
  }
}
