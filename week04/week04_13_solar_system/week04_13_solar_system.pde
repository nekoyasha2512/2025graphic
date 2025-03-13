//week04_13_solar_system
PShape globe;
PShape lunar;
PShape solar;
void setup(){
  noStroke();
  size(400,400,P3D);
  PImage img;
  solar = createShape(SPHERE,80);
  img = loadImage("sun.jpg");
  solar.setTexture(img);
  
  globe = createShape(SPHERE,30);
  img = loadImage("earth.jpg");
  globe.setTexture(img);
  
  lunar = createShape(SPHERE,10);
  img = loadImage("moon.jpg");
  lunar.setTexture(img);
}
void draw(){
  
  background(0);
  translate(width/2,height/2);
  rotateZ(radians(frameCount/2));
  shape(solar); //太陽
  rotateY(radians(frameCount*1.8));
  pushMatrix();
    translate(150,0);
    rotateY(radians(frameCount*2.4));
    shape(globe);//地球
     pushMatrix();
      translate(50,0);
      rotateY(radians(frameCount));
      shape(lunar);//月球
    popMatrix();
  popMatrix();
}
