//week11_02_postman__alpha_interpolation
PImage postman, head, body, uparm1, uparm2, hand1, hand2, leg1, leg2;
float [] angle = new float[20]; //存放20個關節的旋轉角度
int ID = 0; //決定要處理的關節
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key=='0') ID = 0;//頭
  if(key=='1') ID = 1;//左臂
  if(key=='2') ID = 2;//右臂
  if(key=='3') ID = 3;//左肘
  if(key=='4') ID = 4;//右肘
  if(key=='5') ID = 5;//左腿
  if(key=='6') ID = 6;//右腿
  
  if(key=='s'){//存檔  //每次按一次就會存一組angle
    String now = "";
    for(int i=0; i <20; i++){
      now += angle[i] + " ";
    }
    lines.add(now);
    String []arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
  }
  
  if(key=='r'){//讀入
    String[] file = loadStrings("angles.txt");
    if(file != null){ //如果回放紀錄沒有東西
      for(int i=0; i<file.length; i++ ){//對檔案逐行
        lines.add(file[i]);//加入lines串列中
      }
    }
    if(R<lines.size()){
      float [] now = float(split(lines.get(R), " "));
      for(int i=0; i<20; i++) angle[i] = now[i];
      R = (R+1) % lines.size();
    }
  }
  if(key=='p'){//對讀進的結果座內插
    int R2 = (R+1)%lines.size();
    float[] orgAngle = float(split(lines.get(R),' '));
    float[] newAngle = float(split(lines.get(),' '));
    float alpha = (frameCount%30)/30.0;
    for(int i=0; i<20;i++) angle[i] = orgAngle[i] * (1-alpha) + newAngle * alpha;
  }
}
int R = 0;
ArrayList<String> lines = new ArrayList<String>();

void setup() {
  size(650, 650);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png"); 
  uparm2 = loadImage("uparm2.png");
  hand1 = loadImage("hand.png");
  hand2 = loadImage("hand2.png");
  leg1 = loadImage("leg1.png");
  leg2 = loadImage("leg2.png");
}
void draw() {
  background(#FFFFF2);
  image(postman, 0, 0);
  fill(255, 0, 255, 128);//半透明紫色
  rect(0, 0, 650, 650);
  pushMatrix();
    translate(272,259);
    rotate(radians(angle[0]));
    translate(-272,-259);
    image(head, 0, 0);
  popMatrix();
  pushMatrix();
    translate(216,305);
    rotate(radians(angle[1]));
    translate(-216,-305);
    image(uparm1, 0, 0);
    pushMatrix();
      translate(133,307);
      rotate(radians(angle[3]));
      translate(-133,-307);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(338,305);
    rotate(radians(angle[2]));
    translate(-338,-305);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(413,297);
      rotate(radians(angle[4]));
      translate(-413,-297);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(257,453);
    rotate(radians(angle[5]));
    translate(-257,-453);
    image(leg1, 0, 0);
  popMatrix();
  pushMatrix();
    translate(303,435);
    rotate(radians(angle[6]));
    translate(-303,-435);
    image(leg2, 0, 0);
  popMatrix();
  image(body, 0, 0);
}
