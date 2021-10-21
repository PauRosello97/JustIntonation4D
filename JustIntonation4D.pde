Sphere sphere;
float rotationZ = 0;
float MIN_ROTATION = 0.1;
float MAX_ROTATION = 2.5;

void setup(){
  size(800, 800, P3D);
  colorMode(HSB);
  hint(ENABLE_DEPTH_TEST);
  hint(ENABLE_DEPTH_SORT);
  sphere = new Sphere(0, 0);
}

void draw(){
  background(245);
  
  fill(0);
  textAlign(LEFT);
  text("RotationZ: " + rotationZ, 30, 30);
  text("Octave: "+ rotationZ/TWO_PI, 30, 60);
  
  translate(width/2, height/2);
  sphere.draw(rotationZ);
    
  if(keyPressed){
    if (keyCode == 40 && rotationZ > MIN_ROTATION) {
      rotationZ -= 0.1;
    }else if(keyCode == 38 && rotationZ < MAX_ROTATION*TWO_PI){
      rotationZ += 0.1;
    }
  }
}
