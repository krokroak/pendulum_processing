///this code is F= -b * v 


float acc_x;
float circle_x = 500;
float circle_y = 50;

float g = 9.81;

float time = 0;
float vel_x;
float vel_y;


void setup() 
{
    size(1000, 600);
}
void draw() 
{
    background(0,0,0);
    circle(circle_x, circle_y ,50);
    fill(255,255,255); 

    vel_y += g * time;

    circle_y = circle_y + vel_y * time + 0.5 * g * time*time;
    time += 0.01;

    if(circle_y >= 575)
    {
        vel_y = -vel_y;
        if(circle_y > 600)
        {
            circle_y = 600;
        }
    }


}
