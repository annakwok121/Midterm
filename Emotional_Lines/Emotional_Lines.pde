float colorx;
float colory;
Wave sin;
Coordinates grid;


void setup () {
  fullScreen();
  sin = new Wave();
  grid = new Coordinates();
}

void draw() {
  colorx = mouseX/7.5;
  colory = mouseY/4.21875;
  
  background(mouseX-600,500-mouseY,600-mouseX);
  
  //colorx-5*colory
  
  sin.changeWave();
  sin.display();
  
  grid.display();
  
  
  
}