void staticText()
      {
      cam.beginHUD();
      position= cam.getPosition();
      //size(240,height);
      background(0,0,0,100);
      textFont(myHelvetica);
      textAlign(LEFT,BASELINE);
      fill(209,61,100,200);
      text("MAT259 Final Project",20,height-100 );
      text("By Mohit Hingorani",20,height-80 );
      text("Winter 2014",20,height-120 );
      text("Chasing Programming Languages || Extruding Circos",20,40 );
      text("Final 3D Interactive Visualization",20,60 );
      
      
      textFont(myHelvetica12);
      text(" The visualization shows the relationship between the checkin and checkouts of popular \nprogramming languages in the Seattle Public Library. The data is for 8 years from 2006-2013",20,100); 
      
      text(" Camera Position  X: " + position[0]+" Y: "+ position[1]+ " Z: "+ position[2],20,160);
      text(" Frame Rate: "+ int(frameRate),20,180);
      
      
      if (guiFlag)
            drawGUI();
            
      cam.endHUD();
      }
      //camera.beginHUD();
      // now draw things that you want relative to the camera's position and orientation
      //camera.endHUD(); // always!
