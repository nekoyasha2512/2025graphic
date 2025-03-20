//week05_04_translate_rotate_mouseX_mouseY
//rotate與translate的順序
void setup(){
  size(400,400);
}
void draw(){
  background(205);
  //嘗試調換以下程式碼順序
  translate(mouseX, mouseY); //移動到滑鼠所在位置
  rotate(radians(frameCount*10));//依照目前影格數旋轉
  rect(-50,-5,100,10);//左上角的長方體,寬度100
  
  //每次畫圖會依照先前的tranlate和rotate
}
