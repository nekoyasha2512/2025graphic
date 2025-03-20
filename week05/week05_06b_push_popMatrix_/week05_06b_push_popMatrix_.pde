//week05_06b_push&popMatrix_
///利用矩陣Matrix分階層處理
void setup() {
  size(400, 400);
}
void draw() {
  background(0);

  pushMatrix();
    translate(width/2, height/2); //視窗中心
    rotate(radians(frameCount)*10);
    rect(-50, -5, 100, 10);
  popMatrix();
  pushMatrix();
    translate(width/2-100, height/2); //視窗中心
    rotate(radians(frameCount)*10);
    rect(-50, -5, 100, 10);
  popMatrix();
}
