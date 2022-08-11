float  circle_x = 100;
float  circle_y;
float line_1_first, line_1_end;
float line_2_first, line_2_end;

float m; // mass
float g = 9.81;
float vel;
float height;
float theta_1;
float theta_2;
float theta_3;

float kinetic = (1/2) * m * (vel*vel);
float potential = m * g * height;

float time;

void setup() 
{
    size(840, 600);
       
}

void draw() 
{
  background(0,0,0); 

 
    circle(circle_x, circle_y, 50);
    fill(255,255,255);
    noStroke();

  


    circle_y = circle_y + g * time;
    time += 0.01;

    if(circle_y > 550)
    {
        circle_y =0;
        circle_x += 40;
        time = 0;
        if(circle_x > 840)
        {
            circle_x = 0;
        }
    }

  

}

void mousePressed()
{
    circle_y = 0;
    time = 0;
    circle_x += 50;
}