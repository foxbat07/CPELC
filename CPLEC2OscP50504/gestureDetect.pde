void gestureDetect()
    {
      
      if (frameCount%12==0)
          {
            blinkerhand=!blinkerhand;
          }
      textFont(myHelvetica);
      textAlign(RIGHT,BASELINE);
      fill(209,61,100,200);
     // if hands above neck
     if (set1.leftHandY<set1.neckBy && set1.rightHandY< set1.neckBy)
         {
          if ( blinkerhand) 
              { 
                textFont(myHelvetica);
                text(" 2 hand mode", width-20,height-150); 
                text(" 2 hand mode", width-20,height-800);
              }
          checkRotate();
          checkRevolve();
          checkZoom();
          checkTranslate();
          
         }
         
     // if one hand is up
     if (  ((set1.leftHandY< set1.neckBy)&& (set1.rightHandY> set1.neckBy)) || ((set1.leftHandY> set1.neckBy)&& (set1.rightHandY< set1.neckBy))   )
        { 
          onehandGUI(); 
          if ( blinkerhand) 
              {
              textFont(myHelvetica);  
              text(" 1 hand mode", width-20,height-175);
              text(" 1 hand mode", width-20,height-800);
              }
          
              
          
          
        }
        
    if (set1.leftHandY>set1.neckBy && set1.rightHandY> set1.neckBy)
         {
          if ( blinkerhand)  
             {
              textFont(myHelvetica); 
              text(" hands down", width-20,height-150); 
              text(" hands down", width-20,height-800);
            
             }
             
          
         }  
         
      
    }
    
