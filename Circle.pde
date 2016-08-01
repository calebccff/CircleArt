class Circle{
  float x, y, d, seed;
  
  Circle(int _seed){
    seed = _seed;
    x = map(noise(frameCount*0.001+seed, 0), 0, 1, -width*0.1, width*1.1); y = map(noise(0, frameCount*0.001+seed), 0, 1, -height*0.1, height*1.1); d = random(50, 120);
    
  }
  
  void display(){
    fill(0);
    noStroke();
    ellipse(x, y, d, d);
    x = map(noise(frameCount*0.001+seed, 0), 0, 1, -width*0.1, width*1.1); y = map(noise(0, frameCount*0.001+seed), 0, 1, -height*0.1, height*1.1);
  }
  
}