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
              { 
                textFont(myHelvetica);
                text(" 2 hand mode", width-20,height-60); 
                text(" 2 hand mode", width-20,height-600);
              }
          checkRotate();
          checkRevolve();
          checkZoom();
         }
         
     // if one hand is up
     if (  ((set1.leftHandY< set1.neckBy)&& (set1.rightHandY> set1.neckBy)) || ((set1.leftHandY> set1.neckBy)&& (set1.rightHandY< set1.neckBy))   )
        { 
          onehandGUI(); 
          if ( blinker) 
              {
              textFont(myHelvetica);  
              text(" 1 hand mode", width-20,height-60);
              text(" 1 hand mode", width-20,height-300);
              }
          
              
          
          
        }
        
    if (set1.leftHandY>set1.neckBy && set1.rightHandY> set1.neckBy)
         {
          if ( blinker)  
             {
              textFont(myHelvetica); 
              text(" hands down", width-20,height-60); 
              text(" hands down", width-20,height-300);
            
             }
             
          
         }  
         
      
    }
    
