

class Sphere{
  float RADIUS;
  float x, y, z;
  ArrayList<Tone> tones;
  
  Sphere(float x, float y){
    
    tones = new ArrayList<Tone>();
    RADIUS = width*0.4;
    this.x = x;
    this.y = y;
    
    float kA = TWO_PI/22.984;
    float kO = 1/22.984;
    float Oct = 22.984;
    
    tones.add(new Tone(RADIUS, 0,       0,    "F#1"));
    tones.add(new Tone(RADIUS, 3.585,   0,    "B1"));
    tones.add(new Tone(RADIUS, 7.907,   0,    "G1"));
    tones.add(new Tone(RADIUS, 11.492,  0,    "C2"));
    tones.add(new Tone(RADIUS, 15.077,  0,    "F2"));
    tones.add(new Tone(RADIUS, 19.399,  0,    "C#2"));
    
    tones.add(new Tone(RADIUS, Oct,        0,   "F#2"));
    tones.add(new Tone(RADIUS, Oct+3.585,  0,   "B2"));
    tones.add(new Tone(RADIUS, Oct+7.907,  0,   "G2"));
    tones.add(new Tone(RADIUS, Oct+11.492, 0,   "C3"));
    tones.add(new Tone(RADIUS, Oct+15.077, 0,   "F3"));
    tones.add(new Tone(RADIUS, Oct+19.399, 0,   "C#3"));
    
    tones.add(new Tone(RADIUS, Oct*2,       0,   "F#3"));
    tones.add(new Tone(RADIUS, Oct*2+3.585, 0,   "B3"));
    tones.add(new Tone(RADIUS, Oct*2+7.907, 0,   "G2"));
    tones.add(new Tone(RADIUS, Oct*2+11.492,0,   "C4"));
    tones.add(new Tone(RADIUS, Oct*2+15.077,0,   "F3"));
    tones.add(new Tone(RADIUS, Oct*2+19.399,0,   "C#3"));
    
  }
  
  void draw(float rotationZ){
    
    pushMatrix();
      rotateZ(-rotationZ);
      stroke(0);
      noFill();
      ellipseMode(CENTER);
      ellipse(x, y, RADIUS*2, RADIUS*2);
      
      pushMatrix();
        fill(0);
        sphere(10);
        rotateZ(rotationZ);
        line(0, 0, 0, RADIUS);
      popMatrix();
      
      float octave = rotationZ/TWO_PI;
      
      for(Tone tone : tones){
        if(tone.w>=octave-0.5 && tone.w < octave+0.5){
          tone.draw(rotationZ);
        }
      }
    
    popMatrix();
    
  }
}
