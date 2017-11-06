class Coordinates{

  Coordinates () {
  }
  
  void display(){
    textSize(100);
    fill(255);
    text("^_^",width/4 - 50,height/4); 
    text(">_<",3*width/4,3*height/4 + 50); 
    text(":(",width/4,3*height/4 + 50); 
    text(":)",3*width/4,height/4); 
  }
}