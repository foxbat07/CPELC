/**************************************************
 Mohit Hingorani
 Open Studio in Optical Computational Processes
 MAT265 - Spring 2014
 Elementary Gesture Ineractions Using the Kinect for Data Visualization
 www.mohithingorani.com
 to be run in processing 2.0
 oscP5,SimpleOpenNi, peasycam & controlP5 library 
 209-61-100
 updated on 28/04/14
 **************************************************/

import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.*;
import peasy.org.apache.commons.math.geometry.*;
import oscP5.*;
import netP5.*;
import controlP5.*;
ControlP5 controlP5;
OscP5 oscP5;
 
//import opengl.*;
PeasyCam cam;
int years=8;
int radius =400;
int sectors = years*12;
int stepHeight=12;
int startYear=2006;
String [] Month = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int noPL=5;
float dd,mm,yy;
float x,y,z;

//Hue,Saturation,Brightness
float Hue=209;
float Saturation=61;
float Brightness =70;
PFont myHelvetica = createFont("Helvetica",18);
PFont  myHelvetica12 = createFont("Helvetica",12,true);
PFont  myHelvetica14 = createFont("Helvetica",14,true);

Table[] table= new Table[noPL];
int []tableLength= new int[noPL];
//Table table[noPL];
//python ruby javascript java objective C
String cinString,coutString;
int rows=5000,columns=5;
int[][][] cinNumbersTable=new int[noPL][rows][columns];
int[][][] coutNumbersTable=new int[noPL][rows][columns];

float[][][] cinPositionsTable=new float[noPL][rows][3];
float[][][] coutPositionsTable=new float[noPL][rows][3];

boolean Imode= true;  
boolean randomFlag= true;
  
boolean pythonFlag= true;
boolean objectiveCFlag= true;
boolean javaFlag= true;
boolean javaScriptFlag= false;
boolean rubyFlag= false;
boolean guiFlag = true;

PMatrix3D currCameraMatrix;
PGraphics3D g3; 

float[] position= new float[3];

//Oscp5 stuff



NetAddress myRemoteLocation;
int pwidth= 1440/2;
int pheight= 900/2;

dataSet set1 = new dataSet();
dataSet set2 = new dataSet();

int handCircle=30;
int jointCircle=20;
int sizeCircle=40;
color myBlue= color( 209,61,100,200);
float differenceVectorMagnitude;
PVector leftHand= new PVector(0,0,0);
PVector rightHand= new PVector(0,0,0);
 
PFont font265;

float rotateAngle=0;
float revolveAngle=0;
float zoomLevel=1;
double distanceFromCenter=1300;

boolean blinker=true;
