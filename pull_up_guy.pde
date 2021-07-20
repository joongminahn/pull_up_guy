float x;
float u;
float from;
float to;
float from2;
float to2;
float amt;
float amt2;
int direction = 1;

void setup(){
  size(500,500);
  background(255,255,255);
  strokeWeight(3);
  from = 20;
  to = 400;
  from2 =0;
  to2 = 500;
   
}//setup_end

void draw(){
  background(255);
  //building Forest
  beginShape();
  vertex(498,240);
  vertex(486,232);
  vertex(460,249);
  vertex(460,194);
  vertex(448,186);
  bezierVertex(428,215,428,215,423,267);
  vertex(423,380);
  vertex(500,380);
  endShape(CLOSE);
  
  line(486,232,486,380);
  line(460,249,460,380);
  line(448,186,448,380);
  
  
  beginShape();
  vertex(410,280);
  vertex(390,271);
  vertex(374,283);
  vertex(374,380);
  vertex(410,380);
  endShape(CLOSE);
  line(390,271,390,380);
  
  //curveline
  beginShape();
  vertex(498,299);
  bezierVertex(417,326,417,326,337,380);
  vertex(325,380);
  bezierVertex(415,312,415,312,498,286);
  endShape(CLOSE);
   
   //creative_cloud
   beginShape();
   vertex(2,380);
   bezierVertex(30,330,59,353,80,326);
   bezierVertex(150,280,140,242,187,342);
   bezierVertex(207,358,220,370,256,380);   
   endShape();
   
   //seawave
   line(0,380,500,380);
   
   rect(100, 400, x, 1);
   rect(30, 430, u, 1);
    
  x = lerp(to, from, amt);
  u = lerp(to2,from2,amt2);
  
  amt += 0.005 * direction;
  if ( amt >= 1 || amt <= 0) direction *= -1;
  amt2 += 0.01 * direction;
  if ( amt2 >= 1 || amt2 <= 0) direction *= -1;   
  //center_guy
  
   //head
  int h=112;
  int i=50;
  if(mousePressed){
    beginShape();
  vertex(230,i+37);
  bezierVertex(244,i+47,244,i+47,256,i+35);
  vertex(256,i+35);
  vertex(256,i);
  vertex(230,i);
  endShape(CLOSE);

  rect(230,i,26,20);}
 
  else{
  beginShape();
  vertex(230,h+37);
  bezierVertex(244,h+47,244,h+47,256,h+35);
  vertex(256,h+35);
  vertex(256,h);
  vertex(230,h);
  endShape(CLOSE);
  rect(230,h,26,20);
}

 //mountain
 bezier(500,429,449,409,449,409,290,470);
 bezier(330,453,254,442,254,442,94,486);
  //bar
  beginShape();
  vertex(133,500);
  vertex(139,70);
  vertex(357,70);
  vertex(357,500);
  vertex(378,500);
  vertex(378,53);
  vertex(116,53);
  vertex(116,500);  
  endShape(CLOSE);
  
  //left_hand
  rect(188,45,30,12);
  rect(220,45,8,8);
  //right_hand
  rect(279,45,30,12);
  rect(271,45,8,8);
  
  //arm  
  int x=199; 
  int y=70;  
  if(mousePressed){    
    rect(x,y,21,30);
    rect(x+70,y,21,30);
    }else{rect(x,y,21,92);//a=92
    rect(x+70,y,21,92);}
  
  //body
  int a=165;
  int b=103;
  if(mousePressed){
  beginShape();
  vertex(199,b);
  bezierVertex(202,b+21,202,b+21,212,b+42);
  vertex(212,b+42);
  bezierVertex(218,b+57,218,b+57,219,b+78);
  vertex(265,b+78);
  bezierVertex(267,b+57,267,b+57,273,b+40);  
  bezierVertex(286,b+13,286,b+13,289,b);    
  endShape(CLOSE);
  }else{  
  beginShape();
  vertex(199,a);
  bezierVertex(202,a+21,202,a+21,212,a+42);
  vertex(212,a+42);
  bezierVertex(218,a+57,218,a+57,219,a+78);
  vertex(265,a+78);
  bezierVertex(267,a+57,267,a+57,273,a+40);  
  bezierVertex(286,a+13,286,a+13,289,a);    
  endShape(CLOSE);
  }
 
 //legs
 int d=246;
 int e=184;
 if(mousePressed){
 //pants_up
 beginShape();
 vertex(220,e);
 vertex(200,e+60);
 vertex(226,e+65);
 vertex(240,e+35);
 vertex(255,e+65);
 vertex(281,e+62);
 vertex(265,e);
 endShape(CLOSE);
  //left_leg
 beginShape();
 vertex(201,e+60);
 bezierVertex(199,e+77,199,e+77,204,e+91);
 vertex(204,e+91);
 vertex(214,e+140);
 vertex(209,e+164);
 vertex(212,e+172);
 vertex(223,e+170);
 vertex(233,e+143);
 vertex(229,e+136);
 vertex(227,e+112);
 bezierVertex(229,e+93,229,e+93,224,e+78);
 vertex(224,e+65);
 endShape();
 
 //right_leg
 beginShape();
 vertex(256,e+65);
 vertex(255,e+79);
 bezierVertex(251,e+90,251,e+90,253,e+104);
 vertex(258,e+137);
 vertex(256,e+146);
 vertex(269,e+167);
 vertex(276,e+172); 
 vertex(281,e+163);
 vertex(271,e+137);
 vertex(278,e+90);
 bezierVertex(283,e+72,283,e+72,280,e+61);
 endShape();
 
 }else{ 
   //pants_down
 beginShape();
 vertex(220,d);
 vertex(200,d+60);
 vertex(226,d+65);
 vertex(240,d+35);
 vertex(255,d+65);
 vertex(281,d+62);
 vertex(265,d);
 endShape(CLOSE);
  //left_leg
 beginShape();
 vertex(201,d+60);
 bezierVertex(199,d+77,199,d+77,204,d+91);
 vertex(204,d+91);
 vertex(214,d+140);
 vertex(209,d+164);
 vertex(212,d+172);
 vertex(223,d+170);
 vertex(233,d+143);
 vertex(229,d+136);
 vertex(227,d+112);
 bezierVertex(229,d+93,229,d+93,224,d+78);
 vertex(224,d+65);
 endShape();
 
 //right_leg
 beginShape();
 vertex(256,d+65);
 vertex(255,d+79);
 bezierVertex(251,d+90,251,d+90,253,d+104);
 vertex(258,d+137);
 vertex(256,d+146);
 vertex(269,d+167);
 vertex(276,d+172); 
 vertex(281,d+163);
 vertex(271,d+137);
 vertex(278,d+90);
 bezierVertex(283,d+72,283,d+72,280,d+61);
 endShape();
  
 
 }//draw_end
  
  
}//void_draw_end