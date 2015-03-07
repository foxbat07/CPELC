void setupGUI()
      {
              //controlP5.setAutoDraw(false);
              
              int locX=20,locY=140,diff=50;
              int blockwidth=200;
              int blockheight=diff-1;
              controlP5= new ControlP5(this);
              controlP5.setFont(myHelvetica12);
              /*
              if (Imode)
                  {
                  controlP5.addSlider("Structure Hue",0,360,Hue,locX,40,blockwidth*2,blockheight);              
                  controlP5.addSlider("Structure Saturation",0,100,Saturation,locX,40+diff,blockwidth*2,blockheight);              
                  controlP5.addSlider("Structure Brightness",0,100,Brightness,locX,40+2*diff,blockwidth*2,blockheight);
                  }
               */   
              locY+=diff;
              
              controlP5.addToggle("Show Data",locX,locY,blockwidth,blockheight);
              controlP5.controller("Show Data").setColorBackground(#000000);
              
              //controlP5.addButton("METADATA",1,width-locX-blockwidth,locY,blockwidth,blockheight);
              //controlP5.controller("METADATA").setColorBackground(#63FF63);
                      
              locY+=diff;
              
              controlP5.addButton("Python",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("Python").setColorBackground(#FF6363);
              controlP5.controller("Python").setColorCaptionLabel(#000000); 
              controlP5.controller("Python").setColorActive(#FF6363);
              
              
              controlP5.addButton("STRUCTURE",1,width-locX-blockwidth,locY,blockwidth,blockheight);
              controlP5.controller("STRUCTURE").setColorCaptionLabel(#000000); 
              controlP5.controller("STRUCTURE").setColorBackground(#FF6363);
              controlP5.controller("STRUCTURE").setColorActive(#FF6363);
            
            
                  
              locY+=diff;
              
              controlP5.addButton("ObjectiveC",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("ObjectiveC").setColorCaptionLabel(#000000); 
              controlP5.controller("ObjectiveC").setColorBackground(#63FF63);
              controlP5.controller("ObjectiveC").setColorActive(#63FF63);
              
              controlP5.addButton("SNAPSHOT",1,width-locX-blockwidth,locY,blockwidth,blockheight);
              controlP5.controller("SNAPSHOT").setColorCaptionLabel(#000000); 
              controlP5.controller("SNAPSHOT").setColorBackground(#63FF63);
              controlP5.controller("SNAPSHOT").setColorActive(#63FF63);
              
              locY+=diff;
              
              controlP5.addButton("Java",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("Java").setColorCaptionLabel(#000000); 
              controlP5.controller("Java").setColorBackground(#63FFFF);
              controlP5.controller("Java").setColorActive(#63FFFF);
              locY+=diff;
              
              controlP5.addButton("JavaScript",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("JavaScript").setColorCaptionLabel(#000000); 
              controlP5.controller("JavaScript").setColorBackground(#6363FF);
              controlP5.controller("JavaScript").setColorActive(#6363FF);
              locY+=diff;
              
              controlP5.addButton("Ruby",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("Ruby").setColorCaptionLabel(#000000); 
              controlP5.controller("Ruby").setColorBackground(#FF63FF);
              controlP5.controller("Ruby").setColorActive(#FF63FF);
              locY+=diff;
              locY+=diff;
              controlP5.addButton("Reset",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("Reset").setColorCaptionLabel(#000000); 
              controlP5.controller("Reset").setColorBackground(#63FFFF);
              controlP5.controller("Reset").setColorActive(#63FFFF);
              locY+=diff;
              /*
              if ( Imode)
                  {
                  controlP5.addButton("View 1",1,locX,locY,blockwidth,blockheight);
                  controlP5.controller("View 1").setColorForeground(#6363FF);
                  locY+=diff;
                  controlP5.addButton("View 2",1,locX,locY,blockwidth,blockheight);
                  controlP5.controller("View 2").setColorForeground(#6363FF);
                  locY+=diff;
                  controlP5.addButton("View 3",1,locX,locY,blockwidth,blockheight);
                  controlP5.controller("View 3").setColorForeground(#6363FF);
                  locY+=diff;
                  controlP5.addButton("View 4",1,locX,locY,blockwidth,blockheight);
                  controlP5.controller("View 4").setColorForeground(#6363FF);
                  }
              */ 
              
              locY+=2*diff;
              
              locY+=3*diff;
              controlP5.addButton("i/o mode",1,locX,locY,blockwidth,blockheight);
              controlP5.controller("i/o mode").setColorBackground(#FF0000);
                           
              controlP5.setAutoDraw(false);

        }  

void drawGUI() 
      {
        currCameraMatrix = new PMatrix3D(g3.camera);
        camera();
        controlP5.draw();
        g3.camera = currCameraMatrix;
      }


void controlEvent(ControlEvent theEvent) {
  
                 
                if(theEvent.isController()) {
                   
                  print("control event from : "+theEvent.controller().name());
                  println(", value : "+theEvent.controller().value());
                   
                   //if(theEvent.controller().name()=="METADATA") {
                   //                                           metadataFlag=!metadataFlag;
                   //                                           }
                   if(theEvent.controller().name()=="STRUCTURE") {
                                                              structureFlag=!structureFlag;
                                                              chord[0].play();
                                                
                                                
                                                               if(chord[0].isPlaying())
                                                               {//part of minim
                                                                    chord[0].rewind();
                                                                     }                                                              
                                                              }
                   if(theEvent.controller().name()=="SNAPSHOT") {
                                                              saveFrame("snapshot.tif");
                                                              println("snap shot taken");
                                                              chord[0].play();
                                                
                                                
                                                               if(chord[0].isPlaying())
                                                               {//part of minim
                                                                    chord[0].rewind();
                                                                     }                                                              
                                                              }                                           
                   if(theEvent.controller().name()=="Python") {
                                                              pythonFlag=!pythonFlag;
                                                              
                                                              chord[1].play();
                                                
                                                
                                                               if(chord[1].isPlaying())
                                                               {//part of minim
                                                                    chord[1].rewind();
                                                                     }
                                                       
                                                              }
                   
                   if(theEvent.controller().name()=="ObjectiveC") {
                                                              objectiveCFlag=!objectiveCFlag;
                                                              chord[1].play();
                                                
                                                
                                                               if(chord[1].isPlaying())
                                                               {//part of minim
                                                                    chord[1].rewind();
                                                                     }                                                              
                                                              }
                                                              
                   if(theEvent.controller().name()=="Java") {
                                                              javaFlag=!javaFlag;
                                                              chord[1].play();
                                                
                                                
                                                               if(chord[1].isPlaying())
                                                               {//part of minim
                                                                    chord[1].rewind();
                                                                     }                                                              
                                                              }
                   
                   if(theEvent.controller().name()=="JavaScript") {
                                                              javaScriptFlag=!javaScriptFlag;
                                                              
                                                              chord[1].play();
                                
                                                               if(chord[1].isPlaying())
                                                               {//part of minim
                                                                    chord[1].rewind();
                                                                     }                                                              
                                                              }
                   
                   if(theEvent.controller().name()=="Ruby") {
                                                              rubyFlag=!rubyFlag;
                                                              chord[1].play();
                                                
                                                
                                                               if(chord[1].isPlaying())
                                                               {//part of minim
                                                                    chord[1].rewind();
                                                                     }
                                                                     
                                                              }
                   /*                                           
                   if( Imode)                                           
                     {
                       if(theEvent.controller().name()=="Structure Hue") {
                                                                Hue= theEvent.controller().value();
                                                                }
                     if(theEvent.controller().name()=="Structure Saturation") {
                                                                Saturation=theEvent.controller().value();
                                                                }
                     if(theEvent.controller().name()=="Structure Brightness") {
                                                                Brightness=theEvent.controller().value();
                                                              }      
                     }                                        
                   if(theEvent.controller().name()=="Reset") {
                                                              cam.reset();
                                                              }      
                   if( Imode)
                      {                   
                       if(theEvent.controller().name()=="View 1") {
                                                                  
                                                                  cam.setRotations(-radians(90),0,0);
                                                                  cam.lookAt(0,0,500,500,2000);
                                                                  }       
                       if(theEvent.controller().name()=="View 2") {
                                                                  cam.setRotations(-radians(45),-radians(45),0);
                                                                  cam.lookAt(0,0,800,400,2000);
                                                                  }
                       if(theEvent.controller().name()=="View 3") {
                                                                  cam.setRotations(-radians(45),-radians(45),0);
                                                                  cam.lookAt(-125,75,342,300,3000);
                                                                  }          
                       if(theEvent.controller().name()=="View 4") {
                                                                  
                                                                  cam.lookAt(0,0,500,1000,3000);
                                                                  }   
                                                              
                      }         
                    */                      
                   if(theEvent.controller().name()=="i/o mode") {
                                                                         Imode=!Imode;                                                 
                                                                        }                                                     
                   if(theEvent.controller().name()=="Show Data") {
                                                                 if(theEvent.controller().value()==1)
                                                                   {
                                                                   pythonFlag= false;
                                                                   objectiveCFlag= false;
                                                                   javaFlag= false;
                                                                   javaScriptFlag= false;
                                                                   rubyFlag= false;
                                                              
                                                                   } 
                                                                   else
                                                                  {
                                                                    pythonFlag= true;

                                                                   objectiveCFlag= true;
                                                                   javaFlag= true;
                                                                   javaScriptFlag= true;
                                                                   rubyFlag= true;
                                                                    }                  
                                                                 }
                }
}
