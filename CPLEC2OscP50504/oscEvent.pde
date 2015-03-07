
/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) 
  {
  
  /*
  // print the address pattern and the typetag of the received OscMessage 
  print("\n### received an osc message.");
  print("\n addrpattern: "+theOscMessage.addrPattern());
  
  //println(" typetag: "+theOscMessage.typetag());
 
  */
  
  /////////////////////////////////////////////////////////////////////////
  
  /* check if theOscMessage has the address pattern we are looking for. */
  int handCounter=0;
  
  
  
  if(theOscMessage.checkAddrPattern("/skeletons/ID-centralXYZ")==true) 
    {
      /* check if the typetag is the right one. */
      //if(theOscMessage.checkTypetag("ifff"))
        {
          /* parse theOscMessage and extract the values from the osc message arguments. */
          set1.skeletonID = theOscMessage.get(0).intValue();  
          set1.skeletonX = theOscMessage.get(1).floatValue();
          set1.skeletonY = theOscMessage.get(2).floatValue();
          set1.skeletonZ = theOscMessage.get(3).floatValue();
          
          //print("\n ###osc message /skeletons/ID-centralXYZ with typetag ifff.");
          //println(" ID number: "+ set1.skeletonID + "position: "+ set1.skeletonX " "+ set1.skeletonY+ " "+ set1.skeletonZ+ " ");
          return;
        }       
  } 
  
  if(theOscMessage.checkAddrPattern("/skeletons/bones/neckShoulder")==true) 
    {
      /* check if the typetag is the right one. */
      //if(theOscMessage.checkTypetag("ifff"))
        {
          /* parse theOscMessage and extract the values from the osc message arguments. */
          set1.neckAx = theOscMessage.get(0).floatValue();  
          set1.neckAy = theOscMessage.get(1).floatValue();
          set1.neckBx = theOscMessage.get(2).floatValue();
          set1.neckBy = theOscMessage.get(3).floatValue();
          set1.neckBy+=0.06;
          //print("\n ###osc message /neckShoulder/ID-centralXYZ with typetag 12 f.");
          
          return;
        }       
    } 
  
  
  if(theOscMessage.checkAddrPattern("/hands/ID-centralXYZ")==true) 
    {
      /* check if the typetag is the right one. */
      //if(theOscMessage.checkTypetag("ifff"))
       set2.leftHandID= set1.leftHandID;
       set2.leftHandX = set1.leftHandX;
       set2.leftHandY = set1.leftHandY;
       set2.leftHandZ = set1.leftHandZ;
       
       set2.rightHandID= set1.rightHandID;
       set2.rightHandX = set1.rightHandX;
       set2.rightHandY = set1.rightHandY;
       set2.rightHandZ = set1.rightHandZ;
       
      
        {
          /* parse theOscMessage and extract the values from the osc message arguments. */
          set1.id = theOscMessage.get(0).intValue();  
          set1.handX = theOscMessage.get(1).floatValue();
          set1.handY = theOscMessage.get(2).floatValue();
          set1.handZ = theOscMessage.get(3).floatValue();
          
          //print("\n ###osc message /hands/ID-centralXYZ with typetag ifff.");
          //println(" ID number: "+ set1.id + "position: "+ set1.handX+ " "+ set1.handY+ " "+ set1.handZ+ " ");
          
          
          if (set1.handX > set1.skeletonX)
           {
             set1.leftHandID= set1.id;
             set1.leftHandX = set1.handX;
             set1.leftHandY = set1.handY;
             set1.leftHandZ = set1.handZ;
             
           }
        
        if (set1.handX < set1.skeletonX)
           {
             set1.rightHandID= set1.id;
             set1.rightHandX = set1.handX;
             set1.rightHandY = set1.handY;
             set1.rightHandZ = set1.handZ;
             
           }   
          return;
        } 
        
        
        
           
      
      
  } 
  //println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
  
  
}
