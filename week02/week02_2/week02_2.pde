//week02-2
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
