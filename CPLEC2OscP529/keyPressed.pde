void keyPressed()
      {
        if (key == 'p')
            pythonFlag=!pythonFlag;            
        if (key == 'c')    
            objectiveCFlag=!objectiveCFlag;
        if (key == 'j')                                                      
            javaFlag=!javaFlag;
        if (key == 's')   
            javaScriptFlag=!javaScriptFlag;
        if (key == 'r')    
            rubyFlag=!rubyFlag;
        if (key == 'g')    
            guiFlag=!guiFlag;  
        if (key == '+')    
            {
              if(sectors<=84)
                  sectors+=12;
            }
        if (key == '-')    
            {
              if(sectors>12)
                  sectors-=12;
            }
            
      }     
