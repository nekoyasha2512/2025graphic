//Week02-3
void setup(){  //執行一次
  size(400,400);
  background(255);
  fill(238); //填充色彩
  noStroke(); //無框線
  float s = 400/14; //格子大小
  for(int i=0; i<14; i++){ //y座標的格子
    for(int j=0; j<14; j++){  //x座標的格子
      if((i+j)%2==0) rect(j*s,i*s,s,s);
    }
  }
}

void draw(){  //每秒重複執行60次
  stroke(255,0,0); //紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
  //滑鼠事件, 按下滑鼠畫線, 兩個座標分別是現在mouse的座標和上一幀mouse的座標
}
