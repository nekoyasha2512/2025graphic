//week04_06_push_translate_rotate
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  pushMatrix();
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  sphere(100);
  popMatrix();
}
