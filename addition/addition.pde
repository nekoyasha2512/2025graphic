//week09_03_gundam_uparm_upuparm
PShape uparm1,upuparm1,hand1,body,head,uparm2,upuparm2,hand2,calf1,calf2,foot1,foot2,leg1,leg2;
void setup() {
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
  uparm2 = loadShape("uparm2.obj");
  upuparm2 = loadShape("upuparm2.obj");
  hand2 = loadShape("hand2.obj");
}
void draw() {
  background(255);
  translate(width/2, height/2+100);
  sphere(5);//原點點
  
  scale(10, -10, 10);
  
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    //rotateY(radians(mouseX-100));
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
    shape(upuparm2, 0, 0);//上上臂
  pushMatrix();
    translate(-4.1,19.9);
    translate(4.1,-19.9);
    shape(uparm2, 0, 0);//上臂
    pushMatrix();
      translate(-4.5,17.5);
      translate(4.5,-17.5);
     shape(hand2, 0, 0);//手
    popMatrix();
  popMatrix();
  
  shape(upuparm1, 0, 0);//上上臂
  pushMatrix();
    translate(-4.1,19.9);
    translate(4.1,-19.9);
    shape(uparm1, 0, 0);//上臂
    pushMatrix();
      translate(-4.5,17.5);
      translate(4.5,-17.5);
     shape(hand1, 0, 0);//手
    popMatrix();
  popMatrix();
}
