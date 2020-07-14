Starfield star;
Ship ship;
AstroidSpawner collide;

void setup() {
  star = new Starfield();
  ship = new Ship(new PVector(width/2, height/2));
  collide = new AstroidSpawner();
  size(1920, 1080);
}

void draw() {
  background(0,100);
  star.display();
  ship.run();
  collide.addParticle();
  collide.run();
}
