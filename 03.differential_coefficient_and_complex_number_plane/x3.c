#include <stdio.h>
#include <math.h>

int main()
{
 double dy;
 double x = 1;
 double h = 0.0000000001;
 dy = (pow(x+h, 3) - pow(x, 3))/h;
 printf("dy = %f\n", dy);

 return 0;
}
