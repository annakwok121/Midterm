/* This wave code is referenced from Daniel Shiffman's sine
wave example found here: https://processing.org/examples/sinewave.html
*/

class Wave {
  //declarations
  int x;
  int wavewidth;
  float angle;
  float amplitude;
  float period;
  float managex;
  float[] y;
  
  //constructor
  Wave() {
    x = 16;
    angle = 0.0;
    amplitude = 75.0;
    wavewidth = width + 16;
    y = new float[wavewidth/x];
  }
  
  //functions
  void changeWave() {
    if (mouseX > width/2 && mouseY < height/2) {
      period = 500;
      calcWave(period);
      
    }
    
    else if (mouseX > width/2 && mouseY > height/2){
      period = 175;
      calcWave(period);
    }
    
    else if (mouseX < width/2 && mouseY < height/2) {
      period = 800;
      calcWave(period);
    }
    
    else if (mouseX < width/2 && mouseY > height/2) {
      period = 25;
      calcWave(period);
    }
    
  }
  
  void calcWave(float p) {
    float temp = p;
    
    managex = (TWO_PI / temp) * x;
    angle += 0.02;
   
    float theta = angle;
    for(int i = 0; i < y.length; i++) {
      y[i] = sin(theta)*amplitude;
      theta += managex;
    }  
  }
  
  void display() {
    noStroke();
    fill(255);
    for (int j = 0; j < y.length; j++) {
      ellipse(j*x, height/2+y[j], 7, 7);
    }    
  }
  
}