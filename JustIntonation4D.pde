Sphere sphere;
float rotation = 0;
float MIN_ROTATION = 0.1;
float MAX_ROTATION = 2.5;

void setup(){
  size(800, 800, P3D);
  sphere = new Sphere(0, 0);
}

void draw(){
  background(245);
  
  fill(0);
  textAlign(LEFT);
  text("Visual rotation: " + rotation, 30, 30);
  text("Octave: "+ rotation/TWO_PI, 30, 60);
  
  translate(width/2, height/2);
  sphere.draw();
  
  if(keyPressed){
    if (keyCode == 37 && rotation > MIN_ROTATION) {
      rotation -= 0.05;
    }else if(keyCode == 39 && rotation < MAX_ROTATION*TWO_PI){
      rotation += 0.05;
    }
  }
}
