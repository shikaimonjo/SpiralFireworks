//////////////////////////////////////////////////
/*
Spiral Fireworks 2

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

float gt = 0.1;
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
  
  
  a = a * gr;
  b = b + gt;
  c = c - gt;
  d = d * gr;
  
  x1 = a / _cos;
  y1 = b * _sin;
  x2 = c / _cos;
  y2 = d * _sin;

    /*
    Point Cross
    */
    /*
    line(x1 + w, y1 + h, x1 + w, y1 + h);
    line(x2 + w, y2 + h, x2 + w, y2 + h);
    line(y1 + w, x1 + h, y1 + w, x1 + h);
    line(y2 + w, x2 + h, y2 + w, x2 + h);
    */
    
    /*
    The Cross
    gt = 0.1
    */
    /*
    line(x1 + w, y1 + h, x2 + w, y2 + h);
    line(x2 + w, y2 + h, x1 + w, y1 + h);
    line(y1 + w, x1 + h, y2 + w, x2 + h);
    line(y2 + w, x2 + h, y1 + w, x1 + h);
    */
    
    /*
    luminous
    (0.1<=gt<=1)
    */
    //line(x2 + w, y2, w, y2 + h); //C
    //line(x2 + w, y2, 1.5*w, y2 + h); //R
    //line(x2 + w, y2, 0.5*w, y2 + h); //L
    //line(1*x1 + w, 0.01*x2 + h, 10*gr*y1 + w, 2*x2 + h); //two direction
    
    /*
    deer horn
    (gt = 0.5)
    */
    //line( x2 + w, y1, w, x2 + 2*h); //twin
    //line( x2 + w, y1, w, -x2 + 2*h); //twin
    
    /*
    Tele Wave
    (gt = 0.5)
    */
    //line(x2 + w, y1 + h, y2 + w, x2 + h); //twin1
    //line(-x2 + w, -y1 + h, -y2 + w, -x2 + h); //twin1
    //line(y1 + w, x2 + h, x2 + w, y2 + h); //twin2
    //line(-y1 + w, -x2 + h, -x2 + w, -y2 + h); //twin2
    //line(x1 + y1 + y2 + w, y1 + y2 + x2 + h, x2 + w, y2 + h); //another wave
    
    
    /*
    Wood
    (gt = 1)
    */
    /*
    line(y1 + w, y1 + h, y2 + w, x2 + h); //twinA
    line(-y1 + w, -y1 + h, -y2 + w, -x2 + h); //twinA
    line(x2 + w, x2 + h, y2 + w, y1 + h); //twinB
    line(x2 + w, x2 + h, y1 + w, y2 + h); //twinB twinC
    line(-x2 + w, -x2 + h, -y2 + w, -y1 + h); //twinC
    */
    
    /*
    border \
    (gt = 0.2)
    */
    //line(x1 + 2*w, x2 + 2*h, y1 - 0.5*w, x2 - 0.5*h);

    /*
    snow mountain
    (_cos(_sin) = 3000.f, gt = 0.1)
    */
    //line(x1 + w, x2 + h, 10*y1 + w, 2.5*x2 + h);
    
    /*
    Mugen-Dai
    (gt = 0.5)
    */
    //line(10*gr*y2 + w, 0.01*y1 + h, 0.5*x2 + w, 2*y1 + h); //inner1
    //line(0.01*(x2 + y1) + w, 10*gr*(y2 + x1) + h, 2*x2 + w, 2*(y2 + y1) + h); //inner2
    //line(y2 + w, 10*gr*y1 + h, 0.5*gr*x2 + w, y1 + h); //outer
    //line(x1 + x2 + y1 + w, y1 + y2 + x1 + h, w, h); //another inner

    /*
    Banboo
    (0.1<=gt<=1)
    */
    //line(x2 + x1 + w, x2 + y1 + h, y2 + w, y1 + h);
    
    /*
    Saint Cross
    (_cos(_sin) = 3000.f, gt = 0.1)
    */
    //line(0.01*(x2 + y1) + w, 10*gr*(y2 + x1) + h, x2 + w, 2*(y2 + y1) + h); //holy100%
    //line(x1 + w, 0.01*x2 + h, 2*y1 + w, x2 + h); //holy100%
    
    //line(0.01*(x2 + y1) + w, 10*gr*(y2 + x1) + h, x2 + w, (y2 + y1) + h); //holy50%
    //line(x1 + w, 0.01*x2 + h, y1 + w, x2 + h); //holy50%
    
    stroke(255);
    //saveFrame("frames/####.tga");
}
