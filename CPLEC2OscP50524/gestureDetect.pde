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
     if (set1.leftHandY<          set1.skeletonY && set1.rightHandY<           set1.skeletonY)
         {
          if ( blinkerhand) 
              { 
                textFont(myHelvetica);
                //text(" 2 hand mode", width-20,height-150); 
                text(" 2 hand mode", width-20,height-800);
              }
          checkRotate();
          checkRevolve();
          checkZoom();
          checkTranslate();
          
         }
         
     // if one hand is up
     if (  ((set1.leftHandY<           set1.skeletonY)&& (set1.rightHandY>           set1.skeletonY)) || ((set1.leftHandY>           set1.skeletonY)&& (set1.rightHandY<           set1.skeletonY))   )
        { 
          onehandGUI(); 
          if ( blinkerhand) 
              {
              textFont(myHelvetica);  
              //text(" 1 hand mode", width-20,height-175);
              text(" 1 hand mode", width-20,height-800);
              }
          
         checkTranslate();     
          
          
        }
        
    if (set1.leftHandY>          set1.skeletonY && set1.rightHandY>           set1.skeletonY)
         {
          if ( blinkerhand)  
             {
              textFont(myHelvetica); 
              //text(" hands down", width-20,height-150); 
              text(" hands down", width-20,height-800);
            
             }
             
          
         }  
         
      checkTranslate();
    }
    
