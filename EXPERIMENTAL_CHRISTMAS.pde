 /**
  Assignment: Shapes
  Student: Rochelle Golden Nithsdale
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This is my VERTEX excercise
  */
float x, y;
float angle;
float jitter;
void setup()  {
size(400, 400, P3D);
 
}


void draw()  {
 

 
point(120, 80, -200); //tree texture
point(340, 80, -200);
point(340, 300, -200);
point(120, 300, -200);



background(20, 26, 44);
fill(20, 26, 44);

  
fill(241, 242, 17);
beginShape(TRIANGLE_FAN);
vertex(mouseX,100);//120,100  110,100
vertex(110,100);//110,100
vertex(110, 60);//120,60   * 110,60
vertex(138, 100);//148,100  138,100
vertex(110, 140); //130,40   110,140
vertex(88, 100); //160,120    88,100
vertex(110, 60);//  110,60   110.60
endShape();


fill(mouseX,242,17); //tree 234,28,28
beginShape(TRIANGLES);

vertex(120, 300);//tree
vertex(160, 120);
vertex(200, 300);
endShape();

fill(mouseX,242,17); //GREEN 55,300,100
beginShape(TRIANGLES);
vertex(120, 300);//tree
vertex(160, 120);
vertex(200, 300);
endShape();




fill(90, 16, 8);
stroke(255);
fill(255);



circle(285, 170, 55);//top of snowman
circle(285, 225, 65);//middle of snowman
circle(285, 270, 75);//head 65 is good for bottom of snowman



line(285,225,193,194); //left arm
line(285,225,360,160); //right arm 495,60



fill(0);
stroke(0);
ellipse(295, 160, 5, 5);//left eye
ellipse(275, 160, 5, 5);//right eye

fill(240, 105, 56);
//ellipse(285,170,5,5); //nose
arc(285, 172, 20, 20, -PI / 6, PI / 6);//PERFECT NOSE




//fill(0);
//ellipse(300,180,5,5);//left mouth  COULD BE MOUTH
//ellipse(290,185,5,5);//middle
//ellipse(277,185,5,5);//right middle mouth
fill(0);
ellipse(285, 215, 5, 5);//one button
ellipse(285, 225, 5, 5);//second button
ellipse(285, 235, 5, 5);//third button


 fill(247,55,37);
  rectMode(CORNER);
 if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
  rect(100,100,70,70); 








}


void mouseClicked() {
 println(mouseX,mouseY); 
}
