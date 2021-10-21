class Tone{
  float SIZE = 40;
  float x, y, z;
  String name;
  
  Tone(float r, float a, float z, String name){
    x = r*sin(a);
    y = -r*cos(a);
    this.z = z;
    this.name = name;
  }
  
  void draw(float rotation){
    noStroke();
    fill(200);
    pushMatrix();
    translate(x, y, 0);
    
    rotateZ(-rotation);
    sphere(SIZE);
    
    translate(0,0,SIZE);
    fill(0);
    textAlign(CENTER);
    text(name, 0, 0);
    popMatrix();
  }
}
