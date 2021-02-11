int scene = 0;

void setup() {
  size(1280, 720);
  
  setupFlower();
  setupPattern();
}

void draw() {
  
  background(255);
  
  if (frameCount % 120 == 0) {
    scene = floor(random(2));
  }
  
  switch (scene) {
    
    case 0:
    drawFlower();
    break;
    
    case 1:
    drawPattern();
    break;
  
  }
}
