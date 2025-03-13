//week04_11_earth_texture_rotate
PShape globe;
void setup(){
  size(400,400,P3D);
  globe = createShape(SPHERE,100);
  PImage img = loadImage("earth.jpg");
  globe.setTexture(img);
}
void draw(){
  background(0);
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  shape(globe);
}
