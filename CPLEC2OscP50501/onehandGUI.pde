void onehandGUI()
      {
      int locX=20,diff=35;
      int blockwidth=120;
      int blockheight=diff-1;
      int locY=140+2*diff;
      
      line(0,0,100,100);
        
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)   )                {
         pythonFlag=!pythonFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" python status changed",width-20,height-250);
        }
      
      /*
      if(  (set1.rightHandY* height ) < 100  && (set1.rightHandX* width)<100 )                
      {
         pythonFlag=!pythonFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" python status changed",width-20,height-250);
        }  
      */  

       
      }
      
