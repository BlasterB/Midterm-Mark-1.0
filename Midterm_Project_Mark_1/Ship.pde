class Ship {

  PImage ShipIMG;
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean alive;

  Ship(PVector origin) {
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    location = origin.copy();
    alive = true;
  }

  void run() {
    display();
    applyForce();
    controller();
  }

  void display() {
    if (alive == true) {
      ShipIMG = loadImage("ShipIMG.png");
      imageMode(CENTER);
      image(ShipIMG, location.x, location.y);
    }
  }

  void checkEdges() {
    if (location.x > width) {
      alive = false;
    }
    if (location.y > height) {
      alive = false;
    }
    if (location.y < 0) {
      alive = false;
    }
    if (location.x < 0) {
      alive = false;
    }
  }

  void applyForce() {
    //acceleration.x = constrain(acceleration.x, -1, 1);
    //acceleration.y = constrain(acceleration.y, -1, 1);
    velocity.add(acceleration);
    velocity.x = constrain(velocity.x, -8, 8);
    velocity.y = constrain(velocity.y, -8, 8);
    location.add(velocity);
    velocity.mult(.99);
  }


  void controller() {
    if (keyPressed) {
      if (key == 'A' || key == 'a' || keyCode == LEFT) {
        println("lefty");
        //velocity.set(0, 0);
        //acceleration.set(0, 0);
        acceleration.set(-1, 0);
      }
      if (key == 'W' || key == 'w' || keyCode == UP) {
        println("up");
        //velocity.set(0, 0);
        //acceleration.set(0, 0);
        acceleration.set(0, -1);
      }
      if (key == 'S' || key == 's' || keyCode == DOWN) {
        println("down");
        //velocity.set(0, 0);
        //acceleration.set(0, 0);
        acceleration.set(0, 1);
      }
      if (key == 'D' || key == 'd' || keyCode == RIGHT) {
        println("righty");
        //velocity.set(0, 0);
        //acceleration.set(0, 0);
        acceleration.set(1, 0);
      }
    }
  }
}
