//week02_postman_head_body_push_trt_pop
PImage postman, head, body;
void setup() {
  size(650, 650);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
}
void draw() {
  background(#FFFFF2);
  image(postman, 0, 0);
  fill(255, 0, 255, 128);//半透明紫色
  rect(0, 0, 650, 650);
  pushMatrix();
  translate(272,259);
  rotate(radians(mouseX));
  translate(-272,-259);
  image(head, 0, 0);
  popMatrix();
  image(body, 0, 0);
}
void mousePressed(){//用來找旋轉中心
  print(mouseX+" "+mouseY);
}
