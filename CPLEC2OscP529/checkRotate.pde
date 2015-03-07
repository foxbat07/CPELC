void checkRotate()
      {
       // PVector leftHand= new PVector(leftHand.x,leftHand.y,leftHand.z);
       // PVector rightHand= new PVector(rightHand.x,rightHand.y,rightHand.z);
       
       
       leftHand.x= set1.leftHandX;
       leftHand.y= set1.leftHandY;
       leftHand.z= set1.leftHandZ;
       
       rightHand.x= set1.rightHandX;
       rightHand.y= set1.rightHandY;
       rightHand.z= set1.rightHandZ;
       
       PVector differenceVector= PVector.sub(rightHand,leftHand);
       differenceVectorMagnitude = differenceVector.mag();
       //differenceVector.normalize();
       
       
       rotateAngle= map(differenceVector.y, -0.4,0.4,3,-3);
       //text("diff vector "+ differenceVector.x+" "+differenceVector.y+" "+differenceVector.z +" " +differenceVectorMagnitude, 20,20 );
       
       
       
       
       
       
        
        
        
        
      }
      
