class AstroidSpawner {

  ArrayList<Asteroid> a;
  int numberofAsteroid;

  //AstroidSpawner( int totalAsteroid ) {
    //a = new ArrayList<Astroid>();
    //for ( int i = 0; i < totalAsteroid; i++ ) {
      //addParticle();
    //}
    //println("spawn done:" + a.size());
  //}
  
  AstroidSpawner() {
    a = new ArrayList<Asteroid>();
    }
    

  void applyForce(PVector force) {
    for (Asteroid p : a) {
      p.applyForce(force);
    }
  }

  void addParticle() {
    float r = random(1);
    if (r < 0.3) { 
      a.add(new Asteroid(new PVector(random(0, width), -3)));
    } 
    else if (r < 0.6) {
      //a.add(new Asteroid(new PVector(width-1, random(0, height/3))));
    }
    else if (r < 0.9) {
      //a.add(new Asteroid(new PVector(-1, random(0, height/3))));
    }
  }

  void run() {
    for (int i = a.size()-1; i >=0; i--) {
      Asteroid p = a.get(i);
      p.update();
      p.display();

      if (p.location.y > height) {
        a.remove(i);
      }
    }
  }
}
