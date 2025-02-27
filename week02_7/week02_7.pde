//Week02-7
//利用二維串列儲存複數的滑鼠拖曳座標
ArrayList<Integer>x, y; //兩個小串列
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();  //大串列
PImage img;  //全域變數
void setup() {
  size(375, 500);
  img = loadImage("toothless.jpg"); //讀進圖檔
}
void draw() {  //每秒重複執行60次

  background(img);  //重複背景,避免被矩形蓋過
  fill(255, 200);  //填充白色矩形, 移動滑鼠調整alpha值
  rect(0, 0, 375, 500);

  for (int I=0; I<xx.size(); I++) {  //對應外層串列
    ArrayList<Integer> x = xx.get(I);
    ArrayList<Integer> y = yy.get(I);
    for (int i=1; i<x.size(); i++) {  //對應內層串列
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));  //取值畫線
    }
  }
}
void mouseDragged() {  //滑鼠在拖異狀態下, 在內層串列中新增滑鼠的x,y座標值
  //println("vertex(" + mouseX + "," + mouseY); //印出當前座標
  x.add(mouseX);
  y.add(mouseY);
}
void keyPressed() {  //鍵盤事件  p.s用.英文輸入法
  if ( key == 's'|| key == 'S') {    //在按下S鍵時, 印出串列內儲存的數值
    for (int I=0; I<xx.size(); I++) {
      println("beginShape()");
      ArrayList<Integer> x = xx.get(I);
      ArrayList<Integer> y = yy.get(I);
      for (int i=1; i<x.size(); i++) {
        println("vertex(" + mouseX + "," + mouseY + ")"); //印出儲存在串列內的座標+程式碼
      }
      println("endShape()");
    }
  }
}
void mousePressed() {    //當滑鼠按下後建立新的內層串列
  x = new ArrayList<Integer>();
  xx.add(x);
  y = new ArrayList<Integer>();
  yy.add(y);
}
