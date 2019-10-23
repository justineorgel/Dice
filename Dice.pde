void setup()
{
  background(176, 241, 238);
  size(600, 600);
  noLoop();
  
}
void draw()
{
  int numDots=0;
  for(int y=50;y<550;y+=50){
  	for(int x=50;x<550;x+=50){
  		Die rob=new Die(x, y);
  		rob.show();
  		if(rob.dots==1){
  			numDots++;
  		}else{
  			if(rob.dots==2){
  				numDots+=2;
  			}else{
  				if(rob.dots==3){
  					numDots+=3;
  				}else{
  					if(rob.dots==4){
  						numDots+=4;
  					}else{
  						if(rob.dots==5){
  							numDots+=5;
  						}else{
  							if(rob.dots==6){
  								numDots+=6;
  							}
  						}
  					}
  				}
  			}
  		}
  	}
 }  
fill(176,241,238);
noStroke();
rect(250,560,150,30);
fill(0);
text(numDots+" Dots Created",265,580);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;

  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    dots=(int)(Math.random()*6)+1;
  }
  void show()
  {
    if(dots==1){
    	fill(254, 59, 95);
    	rect(myX, myY, 40, 40,5,5,5,5);
    	fill(0);
    	ellipse(myX+20,myY+20,5,5);
    }else{
    	if(dots==2){
    		fill(252, 125, 47);
    		rect(myX, myY, 40, 40,5,5,5,5);
    		fill(0);
    		ellipse(myX+10,myY+10,5,5);
    		ellipse(myX+30,myY+30,5,5);
    	}else{
    		if(dots==3){
    			fill(251, 235, 13);
    			rect(myX, myY, 40, 40,5,5,5,5);
    			fill(0);
    			ellipse(myX+10,myY+10,5,5);
    			ellipse(myX+20,myY+20,5,5);
    			ellipse(myX+30,myY+30,5,5);
    		}else{
    			if(dots==4){
    				fill(132, 244, 119);
    				rect(myX, myY, 40, 40,5,5,5,5);
    				fill(0);
    				ellipse(myX+10,myY+10,5,5);
    				ellipse(myX+30,myY+10,5,5);
    				ellipse(myX+10,myY+30,5,5);
    				ellipse(myX+30,myY+30,5,5);
    			}else{
    				if(dots==5){
	    				fill(102, 206, 237);
	    				rect(myX, myY, 40, 40,5,5,5,5);
	    				fill(0);
	    				ellipse(myX+10,myY+10,5,5);
	    				ellipse(myX+30,myY+10,5,5);
	    				ellipse(myX+10,myY+30,5,5);
	    				ellipse(myX+30,myY+30,5,5);
	    				ellipse(myX+20,myY+20,5,5);
    				}else{
    					if(dots==6){
	    					fill(176, 135, 237);
	    					rect(myX, myY, 40, 40,5,5,5,5);
	    					fill(0);
	    					ellipse(myX+10,myY+10,5,5);
		    				ellipse(myX+30,myY+10,5,5);
		    				ellipse(myX+10,myY+20,5,5);
		    				ellipse(myX+30,myY+20,5,5);
		    				ellipse(myX+10,myY+30,5,5);
		    				ellipse(myX+30,myY+30,5,5);
		    			}
	
    				}
    			}
    		}
    	}
    }
  }
}
