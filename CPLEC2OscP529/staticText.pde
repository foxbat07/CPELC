void staticText()
      {
      cam.beginHUD();
      position= cam.getPosition();
      //size(240,height);
      
      background(0,0,0,100);
      textFont(myHelvetica);
      textAlign(LEFT,BASELINE);
      fill(209,61,100,200);
      text("MAT265 Open Studio in Optical Computational Processes",20,height-100 );
      text("By Mohit Hingorani",20,height-80 );
      text("Spring 2014",20,height-120 );
      text("Chasing Programming Languages || Extruding Circos",20,40 );
      text("3D Interactive Visualization",20,60 );
      
      
      textFont(myHelvetica12);
      text(" The visualization shows the relationship between the checkin and checkouts of popular \nprogramming languages in the Seattle Public Library. The data is for 8 years from 2006-2013",20,100); 
      
      text(" Camera Position  X: " + position[0]+" Y: "+ position[1]+ " Z: "+ position[2],20,160);
      text(" Frame Rate: "+ int(frameRate),20,180);
      
      
      ////////from OSC draw interaction stuff///////////
      
      
      noStroke();
      fill(myBlue,150);
      rect(width-60,0,20,set1.skeletonX* height/4);
      fill(myBlue,150);
      rect(width-40,0,20,set1.skeletonY* height/4);
      fill(myBlue,150);
      rect(width-20,0,20,set1.skeletonZ* height/4);
      
      gestureDetect();
      
      //HANDS
        fill(255);
        ellipse( set1.leftHandX* width, set1.leftHandY*height,handCircle,handCircle);
        
        fill(255);
        ellipse( set1.rightHandX* width, set1.rightHandY*height,handCircle,handCircle);
      
      
      //SKELETON TRACKING
      
      fill(myBlue);
      ellipse( set1.skeletonX* width, set1.skeletonY*height,jointCircle,jointCircle);  
      
      
      //NECK SHOULDER
      fill(myBlue);
      ellipse( set1.neckAx* width, set1.neckAy*height,jointCircle,jointCircle);  
      
      fill(myBlue);
      ellipse( set1.neckBx* width, set1.neckBy*height,jointCircle,jointCircle);  
      
      
           leftHand.x= set1.leftHandX;
           leftHand.y= set1.leftHandY;
           leftHand.z= set1.leftHandZ;
           
           rightHand.x= set1.rightHandX;
           rightHand.y= set1.rightHandY;
           rightHand.z= set1.rightHandZ;
           
           PVector differenceVector= PVector.sub(leftHand,rightHand);
           differenceVectorMagnitude = differenceVector.mag();
           differenceVector.normalize();
           
           
       
       
       textFont(myHelvetica);
       textAlign(RIGHT,BASELINE);
       fill(209,61,100,200);
       
       
       text("diff vector "+ differenceVector.x+" "+differenceVector.y+" "+differenceVector.z +" " +differenceVectorMagnitude,width- 20,20 );
       text("X: "+ nf(differenceVector.x,1,4),width-20,50);
       text("Y: "+ nf(differenceVector.y,1,4),width-20,80);
       text("Z: "+ nf(differenceVector.z,1,4),width-20,110);
       text("d: "+ nf(differenceVectorMagnitude,2,2),width-20,140);
       text("zoom level: "+nf(zoomLevel,2,2) ,width-20,170);
       text("rotate Angle: "+nf(rotateAngle,2,2) ,width-20,210);
       text("revolve Angle: "+nf(revolveAngle,2,2) ,width-20,240);
       text("X Left: "+ nf(set1.rightHandX,2,2),width-20,270);
       text("X Right: "+ nf(set1.leftHandX,2,2),width-20,310);
       text("Distance From Center: "+ distanceFromCenter,width-20,350);
       
      
      pushMatrix();
      translate(width-100,height*3/4);
      noStroke();
      fill(myBlue);
      ellipse(0,0,sizeCircle,sizeCircle);
      rotate((rotateAngle)); 
        
      stroke(255);     
      line(0,0,sizeCircle/2,0);     
      popMatrix();
      
      pushMatrix();
      translate(width-200,height*3/4);
      noStroke();
      fill(myBlue);
      ellipse(0,0,sizeCircle,sizeCircle);
      rotate((revolveAngle)); 
      
      stroke(255);     
      line(0,0,sizeCircle/2,0);     
      popMatrix();
      
      pushMatrix();
      translate(width-300,height*3/4);
      noStroke();
      fill(myBlue);
      ellipse(0,0,zoomLevel*sizeCircle/2,zoomLevel*sizeCircle/2);
      popMatrix();
      /*
      pushMatrix();
      noStroke();
      scale(zoomLevel);
      //rotate(rotateAngle);
      rect(width-200,height/2,20,100);
      popMatrix();
  
   */
      //////////////////////////////////////////////////
      if (guiFlag)
            drawGUI();
            
      cam.endHUD();
      }
      //camera.beginHUD();
      // now draw things that you want relative to the camera's position and orientation
      //camera.endHUD(); // always!
