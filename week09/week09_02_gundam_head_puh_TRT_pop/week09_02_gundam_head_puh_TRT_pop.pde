//week09_02_gundam_head_puh_TRT_pop
PShape body, head;
void setup() {
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
}
void draw() {
  background(255);
  translate(width/2, height/2+100);
  sphere(5);//原點點
  
  scale(10, -10, 10);
  
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateY(radians(mouseX-200));
    rotateX(radians(mouseY-50));
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
}
float x=0, y=0;
void mouseDragged() {
  x+= mouseX - pmouseX;
  y+= mouseY - pmouseY;
  print(x/10,y/10);
}
