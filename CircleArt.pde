int num = 15;

Circle[] circles = new Circle[num];

void setup(){
  fullScreen(FX2D);
  frameRate(60);
  background(20, 25, 20);
  for(int i = 0; i < num; i++){
    circles[i] = new Circle(i*100);
  }
  noFill();
}

void draw(){
  background(20, 25, 20);
  for(int i = 0; i < num; i++){
    noFill();
    stroke(175);
    circles[i].display();
  }
  for(int i = 0; i < num; i++){
    noFill();
    stroke(175);
    try{
      line(circles[i].x, circles[i].y, circles[i+1].x, circles[i+1].y);
    }catch(Exception e){
      line(circles[i].x, circles[i].y, circles[0].x, circles[0].y);
    }
  }
}

float rnoise(int seed, float min, float max){
  return map(noise(frameCount*0.001+seed), 0, 1, min, max);
}

void keyPressed(){
  noLoop();
}

void keyReleased(){
  loop();
}