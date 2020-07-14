class Asteroid {

  PImage asteroid;
  PVector location;
  PVector velocity;
  PVector acceleration;

  Asteroid(PVector t) {
    velocity = new PVector(random(-4,4), 2);
    acceleration = new PVector(random(-4,4), 1);
    location = t.copy();
  }

  void run() {
    update();
    display();
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    velocity.add(acceleration);
    velocity.x = constrain(velocity.x,  0, 5);
    velocity.y = constrain(velocity.y,  0, 5);
    location.add(velocity);
    acceleration.mult(.9);
  }

  void display() {
    asteroid = loadImage("asteroid.png");
    imageMode(CENTER);
    fill(255);
    image(asteroid, location.x, location.y, random(20,50),random(20,50));
    //scale(random(2, 5));
  }
}
