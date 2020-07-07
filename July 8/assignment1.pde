void setup()
{
 size(400,400);     // dimensions of display window
 stickFigure();     // call stick figure function
 desk();            // call desk function
 keyboard();        // call computer function
 monitor();         // call monitor function
 pc();              // call pc function
}

void stickFigure()
{
  ellipse(100, 200, 50, 50); // head
  line(100, 225, 100, 300);  // spine
  line(100, 300, 120, 350);  // right leg
  line(100, 300, 80, 350);   // left leg
  line(100, 250, 150, 250);  // straight arm
  line(100, 250, 150, 275);  // slanted arm
}

void desk()
{
  line(150, 265, 285, 265);  // desk surface
  line(270, 265, 270, 350);  // desk right leg
  line(170, 265, 170, 350);  // desk left leg
}

void keyboard()
{
  line(160, 260, 185, 260); // keyboard
}

void monitor() 
{
  line(250, 240, 260, 240); // monitor bottom
  line(250, 170, 260, 170); // monitor top
  line(250, 240, 250, 170); // monitor front
  line(260, 240, 260, 170); // monitor back
  line(255, 240, 255, 260); // monitor stand 1
  line(240, 260, 270, 260); // monitor stand 2
}

void pc()
{
  line(180, 345, 230, 345); // pc bottom
  line(180, 300, 230, 300); // pc top
  line(180, 345, 180, 300); // pc front
  line(230, 345, 230, 300); // pc back
}
