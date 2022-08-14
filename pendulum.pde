// there is no damping

float l1 = 300;

float theta_1 = 0;
float theta_ref = 100;


float circle_x_1;
float circle_y_1;

float time = 0;
float g = 9.81;


void setup() 
{
    size(800, 1000);
}

void draw() 
{
    background(0,0,0);
    
    translate(400, 500);

    line(0,0, circle_x_1, circle_y_1);
    stroke(255,255,255);
    strokeWeight(2);
    circle(circle_x_1, circle_y_1, 50);
    fill(255,255,255);
   
    time += 0.1;
    theta_1 =  theta_ref * cos(sqrt(g / l1) * time);

    circle_x_1 = l1 * sin(theta_1 * (PI/180));
    circle_y_1 = l1 * cos(theta_1 * (PI/180));


    text(theta_ref , -350, -450);
    text( sin(theta_1 * (PI/180)), -350, -400);
    text( cos(theta_1 *(PI/180)), -350, -350);
    /// check my variables ///
   // println("theta_ 1", theta_1);
    //println("sin", sin(theta_1 * (PI/180)));
    //println("cos" ,cos(theta_1 *(PI/180)));
}




void mousePressed()
{
    
}
