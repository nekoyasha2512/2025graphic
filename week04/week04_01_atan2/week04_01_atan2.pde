//week04_01_atan2
void setup(){
  size(600,300);
}
void draw(){
  background(#C0FFEE); //粉青色, 超讚欸 我喜歡
  ellipse(150,150,100,100);  //大圓
  //ellipse(150+25,150,50,50);  //小圓
  float dx = mouseX-150;
  float dy = mouseY-150;  //計算滑鼠到圓心的距離
  float a = atan2(dy,dx);  //計算角度
  ellipse(150+cos(a)*25,150+sin(a)*25,50,50); //座標根據三角函數定位, 讓裡面的小圓追蹤滑鼠位置
}
