void checkRevolve()
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
       
       
       revolveAngle= map(differenceVector.z, -0.2,0.2,2,-2);
       //println("difference Vector: "+ differenceVector.x+" "+differenceVector.y+" "+differenceVector.z);
       
       //cam.setRotations(0,0,revolveAngle);
       
       
    }
    
