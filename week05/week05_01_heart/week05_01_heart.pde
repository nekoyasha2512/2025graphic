//week05_01_heart
size(300, 300);
stroke(255, 0, 0);
for (int xx=0; xx<300; xx++) {
  for (int yy=0; yy<300; yy++) {
    float x = (xx-150)/100.0; //0~300  >>  -.15 ~ +1.5
    float y = (yy-150)/100.0;  //x(y)-150相當於translate到視窗中心

    float d = x*x + y*y - 1;
    if (-d*d*d - x*x*y*y*y > 0 ) point(xx, yy);
  }
}
