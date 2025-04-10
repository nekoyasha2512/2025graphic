//week08_04_gundam_head_rotate
//PShape body,calf1,calf2,elbow1,elbow2,foot1,foot2;
PShape body, head;
void setup() {
  size(500, 500, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  //calf1 = loadShape("calf1.obj");
  //calf2 = loadShape("calf2.obj");
  //elbow1 = loadShape("elbow1.obj");
  //elbow2 = loadShape("elbow2.obj");
  //foot1 = loadShape("foot1.obj");
  //foot2 = loadShape("foot2.obj");
}
void draw() {
  background(255);
  translate(width/2, height/2+100);
  sphere(10);//基準點
  scale(10, -10, 10);
  pushMatrix();
    translate(0, 22.5);//原來的位置
    //translate(x/10, y/10);
    rotateX(radians(frameCount*10));//轉動
    translate(0, -22.5); //放在x,y的座標
    shape(head, 0, 0);
  popMatrix();
  shape(body, 0, 0);
}
float x=0, y=0;
void mouseDragged() {
  x+= mouseX - pmouseX;
  y+= mouseY - pmouseY;
  print(x/10,y/10);
}
