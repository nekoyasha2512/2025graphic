//week15_01_multiple_windows
//File > Examples > Demos > Tesrs > MultiWindows
void setup() {
  size(200, 200);
  background(255, 0, 0);
  WindowB child = new WindowB();
}
void draw() {
}
class WindowB extends PApplet {
  public WindowB() {//建構子
    super();//呼叫上一層建構子
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }
  public void settings() {
    size(300, 200);
  }
  public void setup() {
    background(0, 255, 0);
  }
  public void draw() {
  }
}
