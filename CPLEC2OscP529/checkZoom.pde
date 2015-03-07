void checkZoom()
    {
      
      leftHand.x= set1.leftHandX;
       leftHand.y= set1.leftHandY;
       leftHand.z= set1.leftHandZ;
       
       rightHand.x= set1.rightHandX;
       rightHand.y= set1.rightHandY;
       rightHand.z= set1.rightHandZ;
       
       PVector differenceVector= PVector.sub(leftHand,rightHand);
       differenceVectorMagnitude = differenceVector.mag();
       differenceVector.normalize();
       zoomLevel= map(set1.rightHandX-set1.leftHandX,0.1,1,5,0.5);
       distanceFromCenter= map(zoomLevel ,0.5,5,3000,500);
       
       distanceFromCenter= 1400;
       
       
       
       //println("difference Vector: "+ differenceVector.x+" "+differenceVector.y+" "+differenceVector.z);
       
       
    }
    
