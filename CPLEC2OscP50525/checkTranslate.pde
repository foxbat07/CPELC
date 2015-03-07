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
       //float offset = averageYPosition - (set1.neckBy+ set1.neckAy)/2;
       float offset = averageYPosition - (set1.neckAy);
       
       // max value maybe between 0 to 0.3?
       //  
       
       //println("offset:"+ offset);
       if (offset < abs(0.1))
           translatePosition = map ( offset, -0.1 , 0.1 ,-stepHeight*years/4, stepHeight*years/4);
       else
           translatePosition=0;
       
  }
  
