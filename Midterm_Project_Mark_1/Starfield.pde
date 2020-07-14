class Starfield {
  
  Starfield() {
  }
  
  void display() {
    fill(0, 5);
    rect(0, 0, width, height);
    fill(255, random(180, 255), 0);
    noStroke();
    rect(random(width), random(height), 7, 7);
  }
  
}
