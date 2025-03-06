//week03_13_3D_pushMatrix&popMatrix
void setup() {
  size(600, 400, P3D);
}
void draw() {
  background(128);
  lights();
  pushMatrix();  //備份矩陣
    translate(300, 100);
    sphere(100);  //縮排, 方便閱讀
  popMatrix();  //還原矩陣
  //備份、還原矩陣，避免translate座標相加
  pushMatrix();
    translate(100, 100);
    sphere(100);
  popMatrix();
}
