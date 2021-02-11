float s = 8;

//float flowerSize = 1;

void setupFlower() {
  size (1280, 720);
  strokeJoin(ROUND);
  stroke(250,165,175);
  strokeWeight(4);
  noFill();
}

void drawFlower() {
  colorMode(RGB, 255, 255, 255);
  
  background(252, 217,78);
  
  translate(width/2, height/2);
  
  mandalaFlower();
  
}

void mandalaFlower() {
  
  for (int i = 0; i < 360; i+=20) {
    pushMatrix();
    translate(0,0);
    scale(1.8);
    rotate(radians(i));
    beginShape();
    for (float q = 0; q <= 20; q+=0.5) {
      float l = (sin (radians (q*frameCount) ) * (5+sin (radians (q*9) ) * (q*3) ) );
      vertex (sin (radians (0) ) * (10+q*s) + l, (10+q*s) + 10); 
    }
    
    for (float q = 20; q >= 0; q-=0.5) {
      float l = (sin (radians (q*9+frameCount) ) * (5+sin (radians (q*9) ) * (q*3) ) );
      vertex(sin (radians (0) ) * (10+q*s) - l, (10+q*s) + 10);
    }
    
    endShape(CLOSE);
    popMatrix();
  }
  
}
