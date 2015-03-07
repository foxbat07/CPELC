void gestureDetect()
    {
      
      if (frameCount%12==0)
          {
            blinker=!blinker;
          }
      textFont(myHelvetica);
      textAlign(RIGHT,BASELINE);
      fill(209,61,100,200);
     // if hands above neck
     if (set1.leftHandY<set1.neckBy && set1.rightHandY< set1.neckBy)
         {
          if ( blinker) 
            text(" 2 hand mode", width-20,height-70); 
          checkRotate();
          checkRevolve();
          checkZoom();
         }
         
     // if one hand is up
     if (  ((set1.leftHandY< set1.neckBy)&& (set1.rightHandY> set1.neckBy)) || ((set1.leftHandY> set1.neckBy)&& (set1.rightHandY< set1.neckBy))   )
        { 
          if ( blinker) 
              text(" 1 hand mode", width-20,height-70);
          
          
        }
        
    if (set1.leftHandY>set1.neckBy && set1.rightHandY> set1.neckBy)
         {
          if ( blinker)  
              text(" hands down", width-20,height-70); 
          
         }    
      
    }
    
