//week03_12_3D_sphere_rotate_light
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  lights();
  translate(mouseX,mouseY);
  rotateX(radians(frameCount));
  sphere(100);
}
