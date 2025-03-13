//week04_13_sun_texture_rotate
PShape sun;
void setup(){
  size(400,400,P3D);
  sun = createShape(SPHERE,100);
  PImage img = loadImage("sun.jpg");
  sun.setTexture(img);
}
void draw(){
  background(0);
  translate(width/2, height/2);
  rotateZ(radians(frameCount));
  shape(sun);
}
