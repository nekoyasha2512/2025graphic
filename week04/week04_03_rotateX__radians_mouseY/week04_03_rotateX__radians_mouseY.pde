//week04_03_rotateX__radians_mouseY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //rotateY(radians(mouseX));//上週左右旋轉
  rotateX(radians(-mouseY)); //上下旋轉,避免歷史餘讀加上負數
  box(200);
}
