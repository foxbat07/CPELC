void setup()
      {
        size(1440,900,OPENGL);
        //size(600,900,OPENGL);
        //size(1920,1200,P3D);
        
        minim = new Minim(this);
        
        chord[0] = minim.loadSnippet("camera.wav"); 
        chord[1] = minim.loadSnippet("beep1.wav"); 
        chord[2] = minim.loadSnippet("beep-21.wav"); 


        //size(1920,1200,OPENGL);
        frameRate(200);
        //cam.setRotations(0,-radians(90),0);
        cam= new PeasyCam( this,0,0,stepHeight*years/2*12,3500);
        
        
        colorMode(HSB,360,100,100,255);
        cam.setMinimumDistance(50);
        cam.setMaximumDistance(3000);        
       
        controlP5 = new ControlP5(this);
        background(0,0,0);
        
        g3 = (PGraphics3D)g;
        //////OscP5 stuff
        oscP5 = new OscP5(this,3333);     //listen on this port
        
        
          

        /////////
        setupGUI();
        
        /*
        table= new Table();
        table= loadTable("cs.csv","header");
        tableLength=table.getRowCount();
        */
        ////loading tables
        
        table[0]= loadTable("python.csv","header");
        tableLength[0]=table[0].getRowCount();
        
        
        table[1]= loadTable("objectivec.csv","header");
        tableLength[1]=table[1].getRowCount();
        
        
        table[2]= loadTable("java.csv","header");
        tableLength[2]=table[2].getRowCount();
        
        
        table[3]= loadTable("javascript.csv","header");
        tableLength[3]=table[3].getRowCount();
        
        
        table[4]= loadTable("ruby.csv","header");
        tableLength[4]=table[4].getRowCount();
        
        for (int pl=0; pl< noPL;pl++)
            {
          
            for (int i=0; i< tableLength[pl];i++)
                {
                 cinString= table[pl].getString(i,0);
                 coutString= table[pl].getString(i,1);
    
                int cinNumbers[] = int(splitTokens(cinString, "- "));             
                int coutNumbers[] =int(splitTokens(coutString, "- "));
                
                for (int matrix=0;matrix<3;matrix++)
                    {
                      cinNumbersTable[pl][i][matrix] =cinNumbers[matrix];
                      coutNumbersTable[pl][i][matrix] =coutNumbers[matrix];                  
                    }
                              
                              
                }
        }    
//conversion to cylendrical cordinates
    for (int pl=0; pl< noPL;pl++)
        {
        for (int i=0; i< tableLength[pl];i++)
             {
              //cintable 
                cinPositionsTable[pl][i][0]= radius/2* cos((radians(30*cinNumbersTable[pl][i][1])+radians(cinNumbersTable[pl][i][2])));    // major rotations by mm , minor rotations with dd
                cinPositionsTable[pl][i][1]= radius/2* sin((radians(30*cinNumbersTable[pl][i][1])+radians(cinNumbersTable[pl][i][2])));
                cinPositionsTable[pl][i][2]= (cinNumbersTable[pl][i][0]-startYear)*stepHeight*12+ cinNumbersTable[pl][i][1]*stepHeight;  ///geeting to the right height
                
              //cout table  
                coutPositionsTable[pl][i][0]= radius/2* cos((radians(30*coutNumbersTable[pl][i][1])+radians(coutNumbersTable[pl][i][2])));    // major rotations by mm , minor rotations with dd
                coutPositionsTable[pl][i][1]= radius/2* sin((radians(30*coutNumbersTable[pl][i][1])+radians(coutNumbersTable[pl][i][2])));
                coutPositionsTable[pl][i][2]= (coutNumbersTable[pl][i][0]-startYear)*stepHeight*12+ coutNumbersTable[pl][i][1]*stepHeight;  ///geeting to the right height
                
             }   
        }  
            //println(cinNumbersTable[0][1]);
            
            
      }
