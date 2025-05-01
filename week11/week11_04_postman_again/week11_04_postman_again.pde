//week11_04_postman_again
int ID = 0;
int R = 0;
void Interpolation(){
    if(lines.size()>=2){
    float alpha = (frameCount%30)/30.0;  
    if(alpha ==0.0) R = (R+1)%lines.size(); //變成0.0則換下一組
    int R2 = (R+1)%lines.size();
    float[] orgAngle = float(split(lines.get(R),' '));
    float[] newAngle = float(split(lines.get(R2),' '));
    for(int i=0; i<10; i++){
      angleX[i] = orgAngle[i*2+0]*(1-alpha) + newAngle[i*2+0]*alpha;
      angleY[i] = orgAngle[i*2+1]*(1-alpha) + newAngle[i*2+1]*alpha;
    }
  }
}
ArrayList<String> lines = new ArrayList<String>();
boolean playing = false;
void keyPressed(){
  if(key=='s'){
    String now = "";
    for(int i=0; i<10; i++){
      now += angleX[i]+" ";
      now += angleY[i]+" ";
    }
    lines.add(now);
    String []arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
    println("Saved Success "+now);
  }
  if(key=='r'){
    String[]file = loadStrings("angles.txt");
    if(file != null){
      for(int i=0; i<file.length; i++){
        lines.add(file[i]);
      }
    }
  }
  
  if(key=='p') playing = !playing;
  if(key=='0') ID = 0;//頭
  if(key=='1') ID = 1;//左臂
  if(key=='2') ID = 2;//右臂
  if(key=='3') ID = 3;//左肘
  if(key=='4') ID = 4;//右肘
  if(key=='5') ID = 5;//左腿
  if(key=='6') ID = 6;//右腿
  
  
}
PImage postman, head, body, uparm1, uparm2, hand1, hand2, leg1, leg2;
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
float[]angleX = new float[10];
float[]angleY = new float[10];
void draw() {
  if(playing) Interpolation();
  background(#FFFFF2);
  image(body, 0, 0);
  
  pushMatrix();
    translate(272,259);
    rotate(radians(angleX[0]));
    translate(-272,-259);
    image(head, 0, 0);
  popMatrix();
  pushMatrix();
    translate(216,305);
    rotate(radians(angleX[1]));
    translate(-216,-305);
    image(uparm1, 0, 0);
    pushMatrix();
      translate(133,307);
      rotate(radians(angleX[2]));
      translate(-133,-307);
      image(hand1, 0, 0);
    popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(338,305);
    rotate(radians(angleX[3]));
    translate(-338,-305);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(413,297);
      rotate(radians(angleX[4]));
      translate(-413,-297);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(257,453);
    rotate(radians(angleX[5]));
    translate(-257,-453);
    image(leg1, 0, 0);
  popMatrix();
  pushMatrix();
    translate(303,435);
    rotate(radians(angleX[6]));
    translate(-303,-435);
    image(leg2, 0, 0);
  popMatrix();
}
void mouseDragged(){
  angleX[ID] += mouseX - pmouseX;
  angleY[ID] += mouseY - pmouseY;
}
