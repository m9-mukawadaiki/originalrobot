float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float dif = 1.0;


void setup(){
  size(1400, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'e'){
      angle2 = angle2 + dif;
    }
    if(key == 'E'){
      angle2 = angle2 - dif;
    }
    if(key == 'h'){
      angle3 = angle3 + dif;
    }
    if(key == 'H'){
      angle3 = angle3 - dif;
    }
  }
  
  //1st link
  rotateZ(radians(angle0));
  translate(0,0,30);
  fill(175);
  box(10,10,60);
  
  //2nd link
  rotateZ(radians(angle1));
  translate(0,15,35);
  fill(150);
  box(10,40,10);
  
  
  //3rd link
  //go to 3nd joint
  translate(0,20,-10);
  rotateZ(radians(angle2));  
  //go to center of 2nd joint
  translate(0,10,0);
  fill(125);
  box(10,40,10);
  
  //4th link
  translate(0,25,0);
  rotateY(radians(angle3));
  fill(100);
  box(5,30,5);
  
  //tukamibu
  translate(0,15,0);
  fill(200);
  box(20,5,10);
  
  translate(-7.5,7.5,0);
  fill(50);
  box(5,10,10);
  
  translate(15,0,0);
  fill(50);
  box(5,10,10);
}
