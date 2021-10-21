

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
    float O = 22.984;
    
    tones.add(new Tone(RADIUS, 0,          .0,              "F#1"));
    tones.add(new Tone(RADIUS, 3.585*kA,   3.585*kO,        "B1"));
    tones.add(new Tone(RADIUS, 7.907*kA,   7.907*kO,        "G1"));
    tones.add(new Tone(RADIUS, 11.492*kA,  .5,              "C2"));
    tones.add(new Tone(RADIUS, 15.077*kA,  15.077*kO,       "F2"));
    tones.add(new Tone(RADIUS, 19.399*kA,  19.399*kO,       "C#2"));
    
    tones.add(new Tone(RADIUS, 0,          1.,              "F#2"));
    tones.add(new Tone(RADIUS, 3.585*kA,   (O+3.585)*kO,    "B2"));
    tones.add(new Tone(RADIUS, 7.907*kA,   (O+7.907)*kO,    "G2"));
    tones.add(new Tone(RADIUS, 11.492*kA,  1.5,             "C3"));
    tones.add(new Tone(RADIUS, 15.077*kA,  (O+15.077)*kO,   "F3"));
    tones.add(new Tone(RADIUS, 19.399*kA,  (O+19.399)*kO,   "C#3"));
    
    tones.add(new Tone(RADIUS, 0,          2.,              "F#3"));
    tones.add(new Tone(RADIUS, 3.585*kA,   (O*2+3.585)*kO,  "B3"));
    tones.add(new Tone(RADIUS, 7.907*kA,   (O*2+7.907)*kO,  "G2"));
    tones.add(new Tone(RADIUS, 11.492*kA,  2.5,             "C4"));
    tones.add(new Tone(RADIUS, 15.077*kA,  (O*2+15.077)*kO, "F3"));
    tones.add(new Tone(RADIUS, 19.399*kA,  (O*2+19.399)*kO, "C#3"));
    
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
