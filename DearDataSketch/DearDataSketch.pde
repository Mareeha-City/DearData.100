Table data;

void setup() {
  size(800, 800);
  background(225);
  
  //loading the table into the file 
  data = loadTable("myData.csv");
  
  //the actual method drawing the shapes 
  drawShape();
}

void draw() {
}


//creating the intial array - no colours or varying sizes yet 
void drawShape() {
  for (int row = 2; row < data.getRowCount(); row = row + 1) {

    String drink = data.getString(row, 1);

    if (drink.trim().equals("matcha")) {
      int col = (row - 2) % 10;
      int r = (row - 2) / 10;

      circle(20 + col * 40, 20 + r * 40, 30);
    }
  }
}
