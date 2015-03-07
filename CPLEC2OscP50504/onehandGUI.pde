void onehandGUI()
      {
      int locX=20,diff=35;
      int blockwidth=120;
      int blockheight=diff-1;
      int locY=140+diff;
      
      
      
      
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
      {
         pythonFlag=!pythonFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" python status changed",width-20,height-250);
        }
      if( (set1.leftHandX*width ) > (width-locX-blockwidth) && (set1.leftHandX*width ) < (width-locX)  &&  (set1.leftHandY* height) > locY && (set1.leftHandY*height ) < (locY+ blockheight)  && set2.leftHandX*width-5 > (width-locX-blockwidth) )                
         {
         structureFlag=!structureFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" structure toggle",width-20,height-250);
        }  
      
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
        {
          objectiveCFlag=!objectiveCFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" objective C status changed",width-20,height-250);
        }
      
      if( (set1.leftHandX*width ) > (width-locX-blockwidth) && (set1.leftHandX*width ) < (width-locX)  &&  (set1.leftHandY* height) > locY && (set1.leftHandY*height ) < (locY+ blockheight)  && set2.leftHandX*width-5 > (width-locX-blockwidth) )                
         {
         saveFrame("snapshotio.tif");
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" snapshot",width-20,height-250);
        }    
      
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
         {
           javaFlag=!javaFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" java status changed",width-20,height-250);
        }  
       locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
         {
           javaScriptFlag=!javaScriptFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" javascript status changed",width-20,height-250);
        } 
       
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                {
         
          rubyFlag=!rubyFlag;
         fill(Hue,Saturation,Brightness,80);
         textFont(myHelvetica);
         textAlign(RIGHT,BASELINE);
         text(" ruby status changed",width-20,height-250);
        }   
       
        
        
      
      

       
      }
      
