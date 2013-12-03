//////////////////////////////////////////////////
/*
Spiral Fireworks 1

This code is made by 
shikaimonjo technology(Masahiro Yoshida)

last update at 2013/11/24

You can change this code freely!
Let's change params and enjoy!

Note:
To use fullscreen, You must download API from this.
http://www.superduper.org/processing/fullscreen_api/
*/
//////////////////////////////////////////////////

//import fullscreen.*;
//import japplemenubar.*;
//FullScreen fs;

float a, b, c, d;
float x1 = 0;
float x2 = 0;
float y1 = 0;
float y2 = 0;

float gt = 1;
float gr = ((1 + sqrt(5)) / 2);

void setup(){
  size(1280, 720);
  colorMode(RGB, 255);
  background(0);
  noStroke();
  frameRate(30);
  //fs = new FullScreen(this); 
  //fs.enter();
  noCursor();
}

void draw(){
  float w = width/2;
  float h = height/2;
  
  //float _cos = cos(millis() / 5000.f);
  //float _sin = sin(millis() / 5000.f);
  
  //float _cos = cos(millis() / 3000.f);
  //float _sin = sin(millis() / 3000.f);
  
  float _cos = cos(millis() / 1000.f);
  float _sin = sin(millis() / 1000.f);
  
  //float _cos = cos(millis() / 100.f);
  //float _sin = sin(millis() / 100.f);
  
  
  a = a + gt;
  b = b + gt;
  c = c - gt;
  d = d - gt;
  
  x1 = a * _cos;
  y1 = b * _sin;
  x2 = c * _cos;
  y2 = d * _sin; 

    /*
    Power Circle
    */
    /*
    line(y1 + w, x1 + h, w, h);
    line(x1 + w, y1 + h, w, h);
    line(y2 + w, x2 + h, w, h);
    line(x2 + w, y2 + h, w, h);
    */
    
    /*
    Point Circle
    */
    /*
    line(x1 + w, y1 + h, x1 + w, y1 + h);
    line(x2 + w, y2 + h, x2 + w, y2 + h);
    line(y1 + w, x1 + h, y1 + w, x1 + h);
    line(y2 + w, x2 + h, y2 + w, x2 + h);
    */
    
    /*
    Tulip
    */
    /*
    line(x1 + w, y1, w, y1 + h);
    line(x2 + w, y2, w, y2 + h);
    line(y1 + w, x1, w, x1 + h);
    line(y2 + w, x2, w, x2 + h);
    */
    
    /*
    Four element
    */
    /*
    line(x1 + w, y2 + h, y2 + w, x2 + h); //quartetA
    line(x2 + w, y1 + h, y2 + w, x2 + h);
    line(-x1 + w, -y2 + h, -y2 + w, -x2 + h);
    line(-x2 + w, -y1 + h, -y2 + w, -x2 + h);
    */
    /*
    line(y1 + w, x2 + h, x2 + w, y2 + h); //quartetB
    line(y2 + w, x1 + h, x2 + w, y2 + h);
    line(-y1 + w, -x2 + h, -x2 + w, -y2 + h);
    line(-y2 + w, -x1 + h, -x2 + w, -y2 + h);
    */
    
    /*
    Tangle
    */
    /*
    line(y1 + w, y1 + h, y2 + w, x2 + h);
    line(x1 + w, x1 + h, x2 + w, y2 + h);
    line(x1 + w, y2 + h, y2 + w, y1 + h);
    //line(-y1 + w, -y1 + h, -y2 + w, -x2 + h); //+
    //line(x1 + x2 + y1 + w, y1 + y2 + x1 + h, w, h); //++
    //line(x1 + y1 + y2 + w, y1 + y2 + x2 + h, x2 + w, y2 + h); //+++
    */
    
    /*
    Data Circle
    */
    /*
    line(y1 + w, y2 + h, x1 + w, y2 + h);
    line(x1 + w, x2 + h, y1 + w, x2 + h);
    line(y2 + w, y1 + h, x2 + w, y1 + h);
    line(x2 + w, x1 + h, y2 + w, x1 + h);
    */
    
    /*
    Process of rage
    */
    /*
    line(x2 + w, x2 + h, y2 + w, y1 + h);
    line(x2 + w, x2 + h, y1 + w, y2 + h);
    line(x1 + w, x1 + h, y1 + w, y2 + h);
    line(x1 + w, x1 + h, y2 + w, y1 + h);
    */
    
    /*
    Spiral of rage
    */
    //line(-x2 + w, -x2 + h, -y2 + w, -y1 + h);
    
    /*
    Mount Tsukuba
    */
    //line(x2 + x1 + w, x2 + y1 + h, y2 + w, y1 + h);
    //line(x2 + y1 + w, y2 + x1 + h, x2 + w, y2 + y1 + h);
    
    /*
    Tube riding
    */
    //line(x2 + y1 + w, y2 + x1 + h, x2 + w, y1 + h);
    
    stroke(255);
    //saveFrame("frames/####.tga");
}
