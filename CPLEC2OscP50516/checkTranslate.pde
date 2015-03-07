void checkTranslate()
  {
       leftHand.x= set1.leftHandX;
       leftHand.y= set1.leftHandY;
       leftHand.z= set1.leftHandZ;
       
       rightHand.x= set1.rightHandX;
       rightHand.y= set1.rightHandY;
       rightHand.z= set1.rightHandZ;
       
       PVector differenceVector= PVector.sub(rightHand,leftHand);
       differenceVectorMagnitude = differenceVector.mag();
       
       float averageYPosition = (leftHand.y+rightHand.y)/2;
       float offset = averageYPosition - set1.neckBy;
       
       // max value maybe between 0 to 0.3?
       //  
       
       println("offset:"+ offset);
       
       //translatePosition = map ( offset, 0,0.5,0,stepHeight*years/2*12);
       
       
  }
  
