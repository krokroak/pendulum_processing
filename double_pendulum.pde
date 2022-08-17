float g = 9.81;

float m1 = 30;
float m2 = 30;

float l1 = 150;
float l2 = 300;

float x1;
float y1;
float x2;
float y2;

float theta1 = PI/4;
float theta2 = PI/16;

float vel_1 = 0;
float vel_2 = 0;

float acc_1 = 0;
float acc_2 = 0;

float num11, num12, num13, num14, den1;
float num21, num22, num23, num24, den2;

int num = 80;
float mx[] = new float[num];
float my[] = new float[num];

int vari;
void setup() 
{
    size(1000, 1000);
}

void draw() 
{

    translate(500, 250);
    background(0,0,0);

    line(0,0,x1,y1);
    stroke(255,255,255);
    fill(255,255,255);
    circle(x1,y1,m1);

    line(x1,y1, x2,y2);
    stroke(255,255,255);
    fill(255,255,255);
    circle(x2, y2,m2);

    x1 = l1 * sin(theta1);
    y1 = l1 * cos(theta1);

    x2 = x1 + l2 * sin(theta2);
    y2 = y1 + l2 * cos(theta2);


    num11 = -g * (2*m1 + m2) * sin(theta1);
    num12 = -m2 * g * sin(theta1 - 2*theta2);
    num13 = -2*sin(theta1 - theta2);
    num14 = m2 * ((vel_2 * vel_2) * l2 + (vel_1 * vel_1) * l1 * cos(theta1 - theta2));

    den1 = l1 * (2*m1 + m2 - m2 * cos(2 * theta1 - 2 * theta2));

   
    num21 = 2*sin(theta1 - theta2);
    num22 = (vel_1 * vel_1) * l1 * (m1 + m2);
    num23 = g * (m1 + m2) * cos(theta1);
    num24 = (vel_2 * vel_2) * l2 * m2 * cos(theta1 - theta2);

    den2 = l2 * (2*m1 + m2 - m2 * cos(2 * theta1 - 2 * theta2));



    acc_1 = (num11 + num12 + num13 * num14) / den1;
    acc_2 = (num21 * (num22 + num23 + num24)) / den2;

    vel_1 += acc_1;
    vel_2 += acc_2;
    
    theta1 += vel_1;
    theta2 += vel_2;


    int which = frameCount % num;
    mx[which] = x2;
    my[which] = y2;
    vari += 1;

    for (int i = 0; i < num; i++) 
    {
        // which+1 is the smallest (the oldest in the array)
        int index = (which+1 + i) % num;
        ellipse(mx[index], my[index], 10, 10);
        colorMode(HSB);
        fill(color(vari, 255,255));
     
        if(vari > 255)
        {
            vari = 0;
        }


    }
  
    text(x2, -450, -150);
    text(y2, -450, -140);

}
