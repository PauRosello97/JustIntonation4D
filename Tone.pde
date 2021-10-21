class Tone{
  float SIZE = 40;
  float x, y, z, w;
  String name;
  
  Tone(float r, float a, float b, float w, String name){
    
    x = r*sin(a)*cos(b);
    y = -r*cos(a)*cos(b);
    z = sin(b);
    this.w = w;
    println(name + ": (" + x + "," + y + ", " + z + ", " + w + ")"); 
    this.name = name;
  }
  
  void draw(){
    noStroke();
    fill(w*50, 255, 255);
    pushMatrix();
    translate(x, y, 0);
    
    sphere(SIZE);
    
    translate(0,0,SIZE);
    fill(0);
    textAlign(CENTER);
    text(name, 0, 0);
    popMatrix();
  }
}
