class Sphere{
  float RADIUS;
  float x, y, z;
  ArrayList<Tone> tones;
  
  Sphere(float x, float y){
    
    tones = new ArrayList<Tone>();
    RADIUS = width*0.4;
    this.x = x;
    this.y = y;
    
    tones.add(new Tone(RADIUS, 0,  0, "C2"));
    tones.add(new Tone(RADIUS, PI, .5, "F#1"));
    tones.add(new Tone(RADIUS, 0,  1., "C3"));
    tones.add(new Tone(RADIUS, PI, 1.5, "F#2"));
    tones.add(new Tone(RADIUS, 0,  2., "C4"));
    tones.add(new Tone(RADIUS, PI, 2.5, "F#3"));
    
  }
  
  void draw(){
    
    pushMatrix();
    rotateZ(rotation);
    stroke(0);
    noFill();
    ellipseMode(CENTER);
    ellipse(x, y, RADIUS*2, RADIUS*2);
    
    float octave = rotation/TWO_PI;
    
    for(Tone tone : tones){
      if(tone.z>=octave-0.5 && tone.z < octave+0.5){
        tone.draw(rotation);
      }
    }
    
    popMatrix();
  }
}
