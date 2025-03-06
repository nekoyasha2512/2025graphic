//week03_01_P3D
void setup(){
  size(400,400,P3D); //開啟3D繪圖功能
}
void draw(){
  background(128);
  translate(mouseX,mouseY);//移動到滑鼠的位置
  rotateY(radians(frameCount));//對Y軸旋轉
  box(200); //大小200的方體
}
