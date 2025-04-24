//week03_11_3D_sphere
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(mouseX,mouseY);
  rotate(radians(frameCount));
  sphere(100);
}
