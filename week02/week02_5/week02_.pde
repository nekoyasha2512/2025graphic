//Week02-5
ArrayList<Integer> x = new ArrayList<Integer>();  //新增資料陣列
ArrayList<Integer> y = new ArrayList<Integer>();
PImage img;  //全域變數
void setup(){  
  size(375,500);
  img = loadImage("toothless.jpg"); //讀進圖檔
}
void draw(){  //每秒重複執行60次
  
  background(img);  //重複背景,避免被矩形蓋過
  fill(255,200);  //填充白色矩形, 移動滑鼠調整alpha值  
  rect(0,0,375,500);
  
  for(int i=1; i<x.size();i++){
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
