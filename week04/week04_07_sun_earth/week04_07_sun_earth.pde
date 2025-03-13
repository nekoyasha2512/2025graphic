//week04_07_sun_earth
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  sphere(50);
  rotateY(radians(frameCount*20));
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount*0.8));
    sphere(30);
  popMatrix();
}
