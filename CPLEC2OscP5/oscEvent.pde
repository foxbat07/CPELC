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
  
  if(theOscMessage.checkAddrPattern("/hands/ID-centralXYZ")==true) {
    /* check if the typetag is the right one. */
    //if(theOscMessage.checkTypetag("ifs"))
    {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int id = theOscMessage.get(0).intValue();  
      float xpos1 = theOscMessage.get(1).floatValue();
      float xpos2 = theOscMessage.get(2).floatValue();
      float xpos3 = theOscMessage.get(3).floatValue();
      
      print("\n ### received an osc message /test with typetag ifs.");
      println(" ID number: "+ id + "position: "+ xpos1+ " "+ xpos2+ " "+ xpos3+ " ");
      return;
    }  
  } 
  //println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
  
  
}
