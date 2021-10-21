class Tone{
  float SIZE = 40;
  float x, y, z, w;
  String name;
  
  Tone(float r, float a, float b, String name){
    
    float kOct = 1/22.984;
    w = a*kOct;
    
    float kA = TWO_PI/22.984;
    a *= kA;
    x = r*sin(a)*cos(b);
    y = -r*cos(a)*cos(b);
    z = sin(b);
    //println(name + ": (" + x + "," + y + ", " + z + ", " + w + ")"); 
    this.name = name;
  }
  
  void draw(float rotationZ){
    noStroke();
    fill(w*50, 255, 255);
    pushMatrix();
    translate(x, y, 0);
    
    sphere(SIZE);
    
    translate(0,0,SIZE);
    rotateZ(rotationZ);
    fill(0);
    textAlign(CENTER);
    text(name, 0, 0);
    popMatrix();
  }
}
