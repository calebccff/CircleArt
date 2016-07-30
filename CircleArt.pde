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
    for(int j = 0; j < num; j++){
      if(circles[j] != circles[i] && j%10==0){
        noFill();
        stroke(175);
        float cx1 = lerp(circles[i].x, circles[j].x, rnoise(j*1000, 0.2, 0.5))+rnoise(j*1000, -50, 50), cy1 = lerp(circles[i].y, circles[j].y, rnoise(j*1000, 0.2, 0.5))+rnoise(j*1000, -50, 50), cx2 = lerp(circles[i].y, circles[j].y, rnoise(j*1000, 0.5, 0.8))+rnoise(j*1000, -50, 50), cy2 = lerp(circles[i].y, circles[j].y, rnoise(j*1000, 0.5, 0.8))+rnoise(j*1000, -50, 50);
        curve(cx1, cy1, circles[i].x, circles[i].y, circles[j].x, circles[j].y, cx2, cy2);
      }
    }
    circles[i].display();
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