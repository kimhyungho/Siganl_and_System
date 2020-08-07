#include <stdio.h>
#include <math.h>

int main()
{
 double dy;
 double t = 6.437;
 double h = 0.0000000001;
 dy = ((t+h)*cos(t+h) - t*cos(t))/h;
 printf("dy = %f\n", dy);

 return 0;
}
