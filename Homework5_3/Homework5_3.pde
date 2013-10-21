import java.awt.Polygon; 


public Map map;

public static color background;

public PFont font48;
public PFont font36;
public PFont font24;
public PFont font14;

public static Draw draw;

public static int filterOn;

private int widthW;
private int heightH;
String[] typeName = {"Drove Alone","Carpooled","Public Trans.","Walked","Other","Home"};

//ControlP5 cp5;
      
color[] typeColor;

void setup(){
  draw = new Draw();

  colorMode(HSB,100);
  
  color blue = color(55,76,100); 
  color green = color(24,100,100); 
  color purple = color(77,80,100);
  color orange = color(9,100,100);
  color magenta = color(90,80,100);
  color red = color(100,83,100);
  
  color[] typeColorTemp = {blue,green,purple,orange, magenta, red};
  typeColor= typeColorTemp;
  
  background = color(0,0,100);
  
  // --- Canvas Setup ----
  heightH = 900;
  widthW = 1200;
  size(widthW,heightH);
  background(background);
  noStroke();
  
  // --- Text Setup ----
  fontLoad();
  
  // --- Create Map ----
  int marginTop = 130;
  int mapWidth = 800;
  map = new Map();
 
}

void fontLoad(){
  font48 = loadFont("SofiaProLight-48.vlw");
  font36 = loadFont("SofiaProLight-36.vlw");
  font24 = loadFont("SofiaProLight-24.vlw");
  font14 = loadFont("SofiaProLight-14.vlw");
}

void mouseMoved(){
  
  //if (draw.within(10,150,720,800)){
      map.mouseMoved();
  //}


}


void mousePressed(){
  
  // --- Mouse is pressed on Map ----
  map.mousePressed();
}


// --- Exists so Draw isn't called every time ----
void redraw(){
}

void draw(){
  draw.draw();
}


