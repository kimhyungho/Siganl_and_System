#include <stdio.h>
#include <math.h>

int main()
{
 double PI = 3.14159;
 double dy;
 double t = PI/2;
 double h = 0.0000000001;
 dy = ((t+h)*cos(t+h) - t*cos(t))/h;
 printf("dy = %f\n", dy);

 return 0;
}
