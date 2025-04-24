//week03_postman_full_body_push_trt_pop
PImage postman, head, body, uparm1, uparm2, hand1, hand2, leg1, leg2;
void setup() {
  size(650, 650);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png"); 
  uparm2 = loadImage("uparm2.png");
  hand1 = loadImage("hand.png");
  hand2 = loadImage("hand2.png");
  leg1 = loadImage("leg1.png");
  leg2 = loadImage("leg2.png");
}
void draw() {
  background(#FFFFF2);
  image(postman, 0, 0);
  fill(255, 0, 255, 128);//半透明紫色
  rect(0, 0, 650, 650);
  pushMatrix();
    translate(272,259);
    //rotate(radians(mouseX));
    translate(-272,-259);
    image(head, 0, 0);
  popMatrix();
  pushMatrix();
    translate(216,305);
    //rotate(radians(mouseX));
    translate(-216,-305);
    image(uparm1, 0, 0);
    pushMatrix();
      translate(133,307);
      //rotate(radians(mouseX));
      translate(-133,-307);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(338,305);
    //rotate(radians(mouseX));
    translate(-338,-305);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(413,297);
      //rotate(radians(mouseX));
      translate(-413,-297);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(257,453);
    //rotate(radians(mouseX));
    translate(-257,-453);
    image(leg1, 0, 0);
  popMatrix();
  pushMatrix();
    translate(303,435);
    //rotate(radians(mouseX));
    translate(-303,-435);
    image(leg2, 0, 0);
  popMatrix();
  image(body, 0, 0);
}
void mousePressed(){//用來找旋轉中心
  print(mouseX+" "+mouseY);
}
