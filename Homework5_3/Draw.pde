public class Draw{
  
  public Draw(){
    //draw();
  }
  
  public void title(){
    fill(34);
    noStroke();
    rect(0,0,width,100);
    fill(background);
    textFont(font48, 48);
    textAlign(CENTER);
    text("U.S. Commuting by State", width/2, 65);  
  }
  
  public void draw(){
    background(background);
    title();
    map.drawMap();
  }
  
  public void filterChange(){
    draw.draw();
  }
  
  public void setWindowState(State state){
    //map.brush(state);
    //stateWindow.setState(state);
  }

  
}

