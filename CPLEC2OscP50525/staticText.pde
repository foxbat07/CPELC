void staticText()
      {
      cam.beginHUD();
      position= cam.getPosition();
      //size(240,height);
      
      background(0,0,0,100);
      textFont(myHelvetica);
      textAlign(LEFT,BASELINE);
      fill(300,61,100,200);
      text("Gesture Based Data Interaction using Kinect",20,32);
      fill(209,61,100,200);
      textFont(myHelvetica12);
      text( "This a Data Visualization exploring the check-in and check-outs \nof books related to computer science programming languages at the \nSeattle Public Library. Each Bezier curve represents the language \nthe book is about and the dates the book was checked out for.\nThe higher the curve, the longer the time it was checked-out for.\nThis is the beginning of my exploration in the field of \nData Interaction & 3D Printing Data. ",20,50);
      
        
      ///bottom left////  
      if ( Imode)
          {
          fill(209,61,100,0);  
          text("Credit: Seattle Public Library data, 'Making Visible the Invisible' by Artist George Legrady ",20,height-75);
          text("Spring 2014",20,height-100 );
          text("By Mohit Hingorani",20,height-125 );
          text("Course: Open Studio in Optical Computational Processes [MAT265] ",20,height-150 );
          text("Description: Data Visualization & Gesture based Interaction",20,height-175);
          text("Project: Chasing Programming Languages || Extruding Circos",20,height-200 );
      //text("3D Interactive Visualization",20,60 );
      
      ////bottom right////
      textFont(myHelvetica);
      textAlign(RIGHT,BASELINE);
      text(" The visualization shows the relationship between the checkin and\n checkouts of popular programming languages in the Seattle Public Library.\n The data is for 8 years from 2006-2013",width-20,height-120); 
          }
      else
          {
           text("Credit: Seattle Public Library data, 'Making Visible the Invisible' by Artist George Legrady ",20,height-75);
          text("Spring 2014",20,height-100 );
          text("By Mohit Hingorani",20,height-125 );
          text("Course: Open Studio in Optical Computational Processes [MAT265] ",20,height-150 );
          text("Description: Data Visualization & Gesture based Interaction",20,height-175);
          text("Project: Chasing Programming Languages || Extruding Circos",20,height-200 );
      //text("3D Interactive Visualization",20,60 );
      
      ////bottom right////
      textFont(myHelvetica);
      textAlign(RIGHT,BASELINE);
      text(" The visualization shows the relationship between the checkin and\n checkouts of popular programming languages in the Seattle Public Library.\n The data is for 8 years from 2006-2013",width-20,height-120); 
          }   
      text(" Camera Position  X: " + int(position[0])+" Y: "+ int(position[1])+ " Z: "+ int(position[2]) ,width-20,height-200);
      text(" Frame Rate: "+ int(frameRate),width-20,height-230);
      
      
      ////////from OSC draw interaction stuff///////////
      
     // if(!Imode)
        {
        noStroke();
        fill(209,61,100,200);
        rect(width-140+10,20,20,140);
        rect(width-100+10,20,20,140);
        rect(width-60+10,20,20,140);
        fill(myBlue,200);
        rect(width-140+10,20+set1.skeletonX* 180,20,5);
        fill(myBlue,200);
        rect(width-100+10,20+set1.skeletonY* 180,20,5);
        fill(myBlue,200);
        rect(width-60+10,20+set1.skeletonZ* 180,20,5);
        }
      
      gestureDetect();
      if(Imode)
        {
        //HANDS
        if (!handDetected)
            {
              fill(255);
              ellipse( set1.leftHandX* width, set1.leftHandY*height,handCircle,handCircle);
              fill(209,100,100);
              ellipse( set2.leftHandX* width, set2.leftHandY*height,handCircle/2,handCircle/2);
              //text(int(set1.leftHandX* width) +" "+  int(set1.leftHandY*height), set1.leftHandX* width+50, set1.leftHandY*height+50);
              
              fill(255);
              ellipse( set1.rightHandX* width, set1.rightHandY*height,handCircle,handCircle);
              fill(209,100,100);
              ellipse( set2.rightHandX* width, set2.rightHandY*height,handCircle/2,handCircle/2);
              //text(int(set1.rightHandX* width) +" "+  int(set1.rightHandY*height),  set1.rightHandX* width+50, set1.rightHandY*height+50);
            
            }
        //SKELETON TRACKING
        if (!skeletonDetected)
            {
            noStroke();
            fill(209,61,100);
            ellipse( set1.skeletonX* width, set1.skeletonY*height,jointCircle,jointCircle);  
            
            
            //NECK SHOULDER
            fill(209,61,100);
            ellipse( set1.neckAx* width, set1.neckAy*height,jointCircle,jointCircle);  
            
            fill(209,61,100);
            ellipse( set1.neckBx* width, set1.neckBy*height  ,jointCircle,jointCircle);  
            }
        }
      
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
       textAlign(RIGHT,CENTER);
       fill(209,61,100,200);
       
       if (!Imode)
           {
           //text("diff vector "+ int(differenceVector.x)+" "+differenceVector.y+" "+differenceVector.z +" " +differenceVectorMagnitude,width- 20,20 );
           text("X: "+ nf(differenceVector.x,1,4),width-20,500);
           text("Y: "+ nf(differenceVector.y,1,4),width-20,520);
           text("Z: "+ nf(differenceVector.z,1,4),width-20,540);
           text("d: "+ nf(differenceVectorMagnitude,2,2),width-20,600);
           text("zoom level: "+nf(zoomLevel,2,2) ,width-100,height-500);
           text("rotate Angle: "+nf(rotateAngle,2,2) ,width-100,height-300);
           text("revolve Angle: "+nf(revolveAngle,2,2) ,width-100,height-400);
           text("X Left: "+ nf(set1.rightHandX,2,2),width-20,560);
           text("X Right: "+ nf(set1.leftHandX,2,2),width-20,580);
           text("Distance From Center: "+ int(distanceFromCenter),width-20,630);
          
      
          pushMatrix();
          translate(width-50,height-300);
          noStroke();
          fill(myBlue);
          ellipse(0,0,sizeCircle,sizeCircle);
          rotate((rotateAngle));         
          stroke(255);     
          line(0,0,sizeCircle/2,0);     
          popMatrix();
          
          pushMatrix();
          translate(width-50,height-400);
          noStroke();
          fill(myBlue);
          ellipse(0,0,sizeCircle,sizeCircle);
          rotate((revolveAngle));     
          stroke(255);     
          line(0,0,sizeCircle/2,0);     
          popMatrix();
          
          pushMatrix();
          translate(width-50,height-500);
          noStroke();
          fill(myBlue);
          ellipse(0,0,zoomLevel*sizeCircle/3,zoomLevel*sizeCircle/3);
          popMatrix();
          
           }
          
      
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
      
      ///////////////////////////////////
      
      ////flashers/////////
      /*
      int locX=20,diff=50;
      int blockwidth=200;
      int blockheight=diff-10;
      int locY=140+2*diff;
      
      if(metadataFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#63FF63);  
           rect(width-locX-blockwidth-5-blockwidth/10,locY-diff, blockwidth/100,blockheight);   
           }
        }
          
      if(pythonFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#FF6363);  
           rect(locX+blockwidth+5,locY, blockwidth/100,blockheight);   
           }
        }
      if(structureFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#FF6363);  
           rect(width-locX-blockwidth-5-blockwidth/10+18,locY, blockwidth/100,blockheight);   
           }
        }  
      locY+=diff;
      if(objectiveCFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#63FF63);  
           rect(locX+blockwidth+5,locY, blockwidth/100,blockheight);   
           }
        }
     
         
           
      locY+=diff;
      if(javaFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#63FFFF);  
           rect(locX+blockwidth+5,locY, blockwidth/100,blockheight);   
           }
        }  
      
      locY+=diff;
      if(javaScriptFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#6363FF);  
           rect(locX+blockwidth+5,locY, blockwidth/100,blockheight);   
           }
        }  
      
      locY+=diff;
      if(rubyFlag)
        {
        //if(frameCount%30==0) 
           { 
           fill(#FF63FF);  
           rect(locX+blockwidth+5,locY, blockwidth/100,blockheight);   
           }
        }
    
    if(Imode)
        {
        //if(frameCount%30==0) 
           { 
           fill(#FF0000);  
           rect(locX+blockwidth+5,locY+8*diff, blockwidth/100,blockheight);   
           }
        }    
      */
    
    
    
      
      cam.endHUD();
      }
      
      
      
      
      
      
      
      
      
      
      //camera.beginHUD();
      // now draw things that you want relative to the camera's position and orientation
      //camera.endHUD(); // always!
