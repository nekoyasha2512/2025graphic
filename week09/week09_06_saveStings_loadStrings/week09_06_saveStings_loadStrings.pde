//week09_06_saveStings_loadStrings
void setup(){
  size(300,300);
  rect(10,10,80,80);
  rect(110,110,80,80);
  save("file.png");
  another = loadStrings("lines.txt");//如果沒有檔案會指定為空指標
}
int x = 10, y=10, ID=0;
void draw(){
  background(204);
  if(another != null){
    int [] now = int(split(another[ID],' '));//整數陣列，將another(字串陣列)裡的資料轉換、分割
    rect(now[0],now[1],80,80);//now是現在從another陣列裡讀進的座標
    ID=(ID+1) % another.length; //指定為陣列中的第ID筆資料
    //draw函式本身以每秒60次的速度運行，ID會自動每幀+1
  }
  rect(x,y,80,80);
}
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  //String now = x + " " + y;//儲存現在座標的字串
  lines.add(x + " " + y); //println(now);//在陣列裡新增字串
}
ArrayList<String> lines = new ArrayList<String>();//JAVA的list陣列
String[] another; //讀進來的字串
void keyPressed(){
  String[] arr = new String[lines.size()];//宣告字串，大小為陣列line的大小
  lines.toArray(arr);//把陣列轉換儲存為字串
  if(key=='s')  saveStrings("lines.txt", arr);//按下鍵盤s鍵儲存為"lines.txt"
}
