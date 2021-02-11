float t;
float theta;
int maxFrameCount = 250;
int a = 201;

void setupPattern() {
  noFill();
  }

void drawPattern() {
  background(182, 225, 242);
  pushMatrix();
  translate(width/2, height/2);

  t = (float)frameCount/maxFrameCount;
  theta = TWO_PI*t;

  for (float x = -500; x <= 500; x += 50){
    for (float y = -500; y <= 500; y += 100) {
      float offSet = (x)*a;
      float sz1 = map(sin(-theta+offSet), -1, 1, -25, 25);
      float sz2 = map(cos(-theta+offSet), -1, 1, 25, -25);
      float sz3 = map(cos(-theta+offSet), 0, 1, 0, 45);
      strokeWeight(5);

      if((x+y)%100 == 0){
        stroke(233, 178, 202);
        shape(x , y , sz1, sz2, sz3);
      } else {
        stroke(255, 242, 186);
        shape(x , y , sz2, sz1, -sz3);
      }
    }
  }
    popMatrix();
}

void shape(float xPos, float yPos, float pOne, float pTwo, float rot) {
  pushMatrix();
  translate(xPos, yPos);
  rotate(radians(rot));
  rotate(radians(75));

  beginShape();
  vertex(-pOne, -pOne);
  vertex(-pOne, -pTwo);
  vertex(pOne, -pTwo);
  vertex(pOne, -pOne);
  vertex(pTwo, -pOne);
  vertex(pTwo, pOne);
  vertex(pOne, pOne);
  vertex(pOne, pTwo);
  vertex(-pOne, pTwo);
  vertex(-pOne, pOne);
  vertex(-pTwo, pOne);
  vertex(-pTwo, -pOne);
  endShape(CLOSE);

  popMatrix();
}
