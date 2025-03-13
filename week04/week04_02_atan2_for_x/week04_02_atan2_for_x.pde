//week04_02_atan2_for_x
void setup() {
  size(600, 300);
}
void draw() {
  background(#C0FFEE); //粉青色, 超讚欸 我喜歡
  for (int x = 150; x<=450; x+=300) {
    ellipse(x, 150, 100, 100);  //大圓
    //ellipse(150+25,150,50,50);  //小圓
    float dx = mouseX-150;
    float dy = mouseY-150;  //計算滑鼠到圓心的距離
    float a = atan2(dy, dx);  //計算角度
    ellipse(x+cos(a)*25, 150+sin(a)*25, 50, 50); //座標根據三角函數定位, 讓裡面的小圓追蹤滑鼠位置
  }
}
