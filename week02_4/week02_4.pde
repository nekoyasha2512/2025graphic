//Week02-4
PImage img;  //全域變數
void setup(){  
  size(375,500);
  img = loadImage("toothless.jpg"); //讀進圖檔
}
void draw(){  //每秒重複執行60次
  background(img);  //重複背景,避免被矩形蓋過
  fill(255,mouseX);  //填充白色矩形, 移動滑鼠調整alpha值  
  println(mouseX);  //印出滑鼠的x座標
  rect(0,0,375,500);
}
