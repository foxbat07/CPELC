void onehandGUI()
      {
      int locX=20,diff=50;
      int blockwidth=200;
      int blockheight=diff-10;
      int locY=140+diff;
      
      
      
      
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
      {
         pythonFlag=!pythonFlag;
       
        }
        /*
      if( (set1.leftHandX*width ) > (width-locX-blockwidth) && (set1.leftHandX*width ) < (width-locX)  &&  (set1.leftHandY* height) > locY && (set1.leftHandY*height ) < (locY+ blockheight)  && set2.leftHandX*width-5 > (width-locX-blockwidth) )                
         {
         structureFlag=!structureFlag;
         
        }  
      
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
        {
          objectiveCFlag=!objectiveCFlag;
      
        }
      
      if( (set1.leftHandX*width ) > (width-locX-blockwidth) && (set1.leftHandX*width ) < (width-locX)  &&  (set1.leftHandY* height) > locY && (set1.leftHandY*height ) < (locY+ blockheight)  && set2.leftHandX*width-5 > (width-locX-blockwidth) )                
         {
         saveFrame("snapshotio.tif");
         
        }    
      */
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
         {
           javaFlag=!javaFlag;
         
        }  
       locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                
         {
           javaScriptFlag=!javaScriptFlag;
         
        } 
       
      locY+=diff;  
      if( (set1.rightHandX*width ) > locX && (set1.rightHandX*width ) < (locX+ blockwidth)  &&  (set1.rightHandY* height) > locY && (set1.rightHandY*height ) < (locY+ blockheight)  && set2.rightHandX*width+5 > (locX+blockwidth) )                {
         
          rubyFlag=!rubyFlag;
         
        }   
       
        
        
      
      

       
      }
      
