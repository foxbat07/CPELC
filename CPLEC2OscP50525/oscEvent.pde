
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
  /*
  if(theOscMessage.checkAddrPattern("/hands/start")==true) 
     {
      println("Hands detected ");
     }
  if(theOscMessage.checkAddrPattern("/skeletons/start")==true) 
     {
      println("skeleton detected ");
     }   
  */
  
  if(theOscMessage.checkAddrPattern("/skeletons/ID-centralXYZ")==true) 
    {
      skeletonDetected=true;
      println(" skeleton detected");  
      /* check if the typetag is the right one. */
      //if(theOscMessage.checkTypetag("ifff"))
        {
          /* parse theOscMessage and extract the values from the osc message arguments. */
          float tempXValue = theOscMessage.get(1).floatValue();
          float tempZValue = theOscMessage.get(3).floatValue();
          if ( tempXValue > 0.1 && tempXValue < 0.9 && tempZValue < 0.5 )
              {
              set1.skeletonID = theOscMessage.get(0).intValue();  
              set1.skeletonX = theOscMessage.get(1).floatValue();
              set1.skeletonY = theOscMessage.get(2).floatValue();
              set1.skeletonZ = theOscMessage.get(3).floatValue();
              }
          //print("\n ###osc message /skeletons/ID-centralXYZ with typetag ifff.");
          //println(" ID number: "+ set1.skeletonID + "position: "+ set1.skeletonX " "+ set1.skeletonY+ " "+ set1.skeletonZ+ " ");
          return;
        }       
    }
  else
    {
     println("no skeleton detected"); 
     skeletonDetected=false;
     
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
      handDetected=true;
      println("hand detected");  
      /* check if the typetag is the right one. */
      //if(theOscMessage.checkTypetag("ifff"))
       set2.leftHandID= set3.leftHandID;
       set2.leftHandX = set3.leftHandX;
       set2.leftHandY = set3.leftHandY;
       set2.leftHandZ = set3.leftHandZ;
       
       set2.rightHandID= set3.rightHandID;
       set2.rightHandX = set3.rightHandX;
       set2.rightHandY = set3.rightHandY;
       set2.rightHandZ = set3.rightHandZ;
       
      
        
          /* parse theOscMessage and extract the values from the osc message arguments. */
          set3.id = theOscMessage.get(0).intValue();  
          set3.handX = theOscMessage.get(1).floatValue();
          set3.handY = theOscMessage.get(2).floatValue();
          set3.handZ = theOscMessage.get(3).floatValue();
          
          //print("\n ###osc message /hands/ID-centralXYZ with typetag ifff.");
          //println(" ID number: "+ set1.id + "position: "+ set1.handX+ " "+ set1.handY+ " "+ set1.handZ+ " ");
          
          
          if (set3.handX > set1.skeletonX)
           {
             set3.leftHandID= set3.id;
             set3.leftHandX = set3.handX;
             set3.leftHandY = set3.handY;
             set3.leftHandZ = set3.handZ;
             
           }
        
        if (set3.handX < set1.skeletonX)
           {
             set3.rightHandID= set3.id;
             set3.rightHandX = set3.handX;
             set3.rightHandY = set3.handY;
             set3.rightHandZ = set3.handZ;
             
           }   
           
         set1.leftHandX  = lerp(set2.leftHandX,set3.leftHandX,lerp);
         set1.rightHandX = lerp(set2.rightHandX,set3.rightHandX,lerp);
         
         set1.leftHandY = lerp(set2.leftHandY,set3.leftHandY,lerp);
         set1.rightHandY= lerp(set2.rightHandY,set3.rightHandY,lerp);
         
         set1.leftHandZ  = lerp(set2.leftHandZ,set3.leftHandZ,lerp);
         set1.rightHandZ = lerp(set2.rightHandZ,set3.rightHandZ,lerp);
         
          return;
         
    
      }
  else
    {
     handDetected = false;
     println("no hand detected");  
    }
    
  //println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
  
  
}
