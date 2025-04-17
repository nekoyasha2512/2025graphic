//week09_01_gundam_head
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
  shape(head, 0, 0);
  shape(body, 0, 0);
}
