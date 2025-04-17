//week09_03_gundam_uparm_upuparm
PShape uparm1,upuparm1;
void setup() {
  size(400, 400, P3D);
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
}
void draw() {
  background(255);
  translate(width/2, height/2+100);
  sphere(5);//原點點
  
  scale(10, -10, 10);
  
  shape(upuparm1, 0, 0);//上上臂
  pushMatrix();
    translate(-4.1,19.9);
    rotateX(radians(mouseY-100));
    translate(4.1,-19.9);
    //translate(mouseX/10.0, -mouseY/10.0);//移動，尋找適合的座標
    //println(mouseX/10.0, -mouseY/10.0);//印出座標
    shape(uparm1, 0, 0);//上臂
  popMatrix();
}
