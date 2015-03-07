void draw()
      { 
        
        background(0);
        fill(255);
        if (frameCount%12==0)
          {
            blinker=!blinker;
          }
        staticText();
        
        
        // stops the peasy cam from revolving;
        if (Imode)
            {
            float x=0;
            float y=0;
            
            float easing=0.1;
            // float easingDistancefromCenter=distanceFromCenter;
            float targetRotateAngle = rotateAngle;
            float dx = targetRotateAngle - x;
            if(abs(dx) > 1) {
              x += dx * easing;
            }
            
            float targetRevolveAngle = revolveAngle;
            float dy = targetRevolveAngle - y;
            if(abs(dy) > 1) {
              y += dy * easing;
            }
              
            cam.setRotations(300,-y*3,-x*3);
            cam.setDistance(500+distanceFromCenter); 
            }
            
            
        for (int sectorNumber=0 ; sectorNumber< sectors; sectorNumber++)
            {
              drawArc(sectorNumber);
              displayDates(sectorNumber);
              
              
            }
        
        for (int pl=0; pl< noPL;pl++)
            { 
            for (int i=0; i< tableLength[pl];i++)
                {
               
                 //stroke(pl*60+60,Saturation,Brightness,160);
                 strokeWeight(1);
                 noFill();  
                 
                 /*    
                 bezier(cinPositionsTable[i][0],cinPositionsTable[i][1],cinPositionsTable[i][2],
                 (cinPositionsTable[i][0]+coutPositionsTable[i][0])/6,(cinPositionsTable[i][1]+coutPositionsTable[i][1])/6,(cinPositionsTable[i][2]+coutPositionsTable[i][2])/1.5,
                 (cinPositionsTable[i][0]+coutPositionsTable[i][0])/6,(cinPositionsTable[i][1]+coutPositionsTable[i][1])/6,(cinPositionsTable[i][2]+coutPositionsTable[i][2])/1.5,
                 coutPositionsTable[i][0],coutPositionsTable[i][1],coutPositionsTable[i][2]);
                 */
                 if(pythonFlag && pl==0)
                   {
                   stroke(#FF6363,150);
                   bezier(cinPositionsTable[pl][i][0],cinPositionsTable[pl][i][1],cinPositionsTable[pl][i][2],
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                          coutPositionsTable[pl][i][0],coutPositionsTable[pl][i][1],coutPositionsTable[pl][i][2]);
                   }
                 if(objectiveCFlag && pl==1)
                   {
                   stroke(#63FF63,150);
                   bezier(cinPositionsTable[pl][i][0],cinPositionsTable[pl][i][1],cinPositionsTable[pl][i][2],
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                          coutPositionsTable[pl][i][0],coutPositionsTable[pl][i][1],coutPositionsTable[pl][i][2]);
                   }               
                 if(javaFlag && pl==2)
                     {
                       stroke(#63FFFF,150);
                   bezier(cinPositionsTable[pl][i][0],cinPositionsTable[pl][i][1],cinPositionsTable[pl][i][2],
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                          coutPositionsTable[pl][i][0],coutPositionsTable[pl][i][1],coutPositionsTable[pl][i][2]);
                     }
                 if(javaScriptFlag && pl==3)
                   {
                   stroke(#6363FF,150);
                   bezier(cinPositionsTable[pl][i][0],cinPositionsTable[pl][i][1],cinPositionsTable[pl][i][2],
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                          coutPositionsTable[pl][i][0],coutPositionsTable[pl][i][1],coutPositionsTable[pl][i][2]);
                   }
                 if(rubyFlag && pl==4)
                   {
                   stroke(#FF63FF,150);
                   bezier(cinPositionsTable[pl][i][0],cinPositionsTable[pl][i][1],cinPositionsTable[pl][i][2],
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                         (cinPositionsTable[pl][i][0]+coutPositionsTable[pl][i][0])/6,(cinPositionsTable[pl][i][1]+coutPositionsTable[pl][i][1])/6,(cinPositionsTable[pl][i][2]+coutPositionsTable[pl][i][2])/1.78,
                          coutPositionsTable[pl][i][0],coutPositionsTable[pl][i][1],coutPositionsTable[pl][i][2]);
                   }    
                }
            }   
            
            
        //drawCircles();
      }
