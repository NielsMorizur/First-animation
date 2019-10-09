  //colors
int green=#08980D;
int dgreen=#176406;
int blue=#1AA7D8;
int red=#EA0707;
int brown=#8E4D34;
int lblue=#1796D3;
int yellow=#FAEF0F;
int orange=#FA750F;
int purple=#A014DE;

float colour1=255;
float colour2=70;
float colour3=230;

int c1=250;
int c2=650;
int c3=1050;

float mountain=-300;

int flowers=0;
int barn=750;
void setup() {
  size(900, 700);

}

void draw() {
  background(blue);
  noStroke(); 
  fill(green);
 rect(0, 450, 900, 300);
   
   pushMatrix();
     translate(mountain, -100);
     scale(1.6);
     mountain();
     mountain=mountain-0.5;
   popMatrix();
   if (mountain==-1300) {
    mountain=400; 
   }
   
   fill(colour1);
ellipse(c1,150, 80,75);
ellipse(c1-50,150, 70, 70);
ellipse(c1+50,150, 70,70);
ellipse(c1,110, 80,75);
//400 difference
  fill(colour2);
ellipse(c2,150, 80,75);
ellipse(c2-50,150, 70,70);
ellipse(c2+50,150, 70,70);
ellipse(c2,110, 80,75);
//
  fill(colour3);
ellipse(c3,150, 80,75);
ellipse(c3-50,150, 70,70);
ellipse(c3+50,150, 70,70);
ellipse(c3,110, 80,75);
   c1=c1-1;
     if (c1==-150) {
      c1=1050; 
      colour1=255;
     }
   c2=c2-1;
     if (c2==-150) {
      c2=1050; 
      colour2=70;
     }
   c3=c3-1;
     if (c3==-150) {
      c3=1050; 
      colour3=230;
     }
   
   if (colour3>=70) {
      colour3=colour3-0.18;
    }
    if (colour2<=255) {
      colour2=colour2+0.18;
    }
    
    if (colour1>=70) {
      colour1=colour1-0.18;
    }
    
   pushMatrix();
  translate(barn,150);
  scale(0.7);
  barn();
  barn=barn-2;
   popMatrix();
  if (barn==-800) {
   barn=750; 
  }

   pushMatrix();
     translate(flowers, 0);
     flowers();
     flowers=flowers-4;
   popMatrix();
    if (flowers==-900) {
      flowers=300;  
    }
    
   pushMatrix();
  translate(mouseX-90, mouseY-60);
  scale(0.45);
  butterfly();
   popMatrix(); 
}

void mountain () {
   noStroke();
  fill(56, 8, 155);
triangle(793,345, 380,345, 700,190); 
  fill(255);
  noStroke();
triangle(700, 189, 592, 242, 732, 242); 
  fill(56, 8, 155);
  noStroke();
triangle(592, 242, 662, 227, 695, 255);
triangle(670, 250, 700, 227, 732, 242); 
}

void flowers() {
    //red flower
  fill(dgreen);
  stroke(dgreen);
  strokeWeight(3);
line(800,610, 800,510);
  fill(red);
  noStroke();
ellipse(785,510, 25,20);
ellipse(800,495, 20,25);
ellipse(815,510, 25,20);
ellipse(800,525, 20,25);
  noStroke();
  fill(yellow);
ellipse(800,510, 20,20);
    //orange flower
  fill(dgreen);
  stroke(dgreen);
  strokeWeight(3);
line(760,630, 745,530);
  fill(orange);
  noStroke();
ellipse(730,530, 25,20);
ellipse(745,515, 20,25);
ellipse(745,545, 20,25);
ellipse(760,530, 25,20);
  noStroke();
  fill(yellow);
ellipse(745,530, 20,20);
  //purple flower
  fill(dgreen);
  stroke(dgreen);
  strokeWeight(3);
line(840,630, 855,530);
  fill(purple);
  noStroke();
ellipse(855,545, 20,25);
ellipse(855,515, 20,25);
ellipse(840,530, 25,20);
ellipse(870,530, 25,20);
  fill(yellow);
  noStroke();
ellipse(855,530, 20,20);
}

void barn() {
 fill(red);
 strokeWeight(2);
 stroke(0);
rect(250, 250, 250, 200);
  noStroke();
triangle(250, 253, 500, 253, 375, 130);
  stroke(0);
  strokeWeight(7);
line(375,130, 230,270);
line(375,130, 520,270);
  stroke(255);
  strokeWeight(6);
rect(330,330, 90,117);
line(330,330, 420,447);
line(330,447, 420,330);
  strokeWeight(5);
  fill(lblue);
rect(340,200, 70,70);
line(375,200, 375,270);
line(340,235, 410,235); 
  fill(brown);
  stroke(0);
  strokeWeight(1);
rect(500,360, 250,15);
rect(500,400, 250,15);
rect(525,340, 20,110);
rect(570,340, 20,110);
rect(615,340, 20,110);
rect(660,340, 20,110);
rect(705,340, 20,110); 
}

void butterfly() {
  noStroke();
  fill(0);
  //wings 
    //left side
    fill(250, 114, 3);
    stroke(0);
    strokeWeight(3);
quad(200,140, 200,186, 130,220, 150,160);
quad(200,160, 200,115, 110,70, 130,140);
    //right side
quad(200,140, 200,186, 270,220, 250,160);
quad(200,160, 200,115, 290,70, 270,140);
  //wing left circles
  fill(30);
  noStroke();
ellipse(135, 105, 15, 30);
ellipse(150, 120, 10, 10);
ellipse(175, 130, 20, 25);
  fill(255);
ellipse(122, 85, 7, 7);
  //wing right circles
  fill(30);
ellipse(265, 105, 15, 30);
ellipse(250, 120, 10, 10);
ellipse(225, 130, 20, 25);
  fill(255);
ellipse(278, 85, 7, 7);
  //bottom wings circles
  fill(30);
ellipse(170, 178, 20, 20);
ellipse(230, 178, 20, 20);
  fill(255);
ellipse(146, 203, 8, 8);
ellipse(254, 203, 8, 8);
  //body
  noStroke();
  fill(0);
  strokeWeight(2);
ellipse(200, 150, 13, 100);
ellipse(185, 80, 5, 5);
ellipse(215, 80, 5, 5);
  stroke(0);
  strokeWeight(2);
line(196, 105, 185, 80);
line(203, 105, 215, 80);
}
