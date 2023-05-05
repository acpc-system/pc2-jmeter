#include <stdio.h>
int main() {
	FILE *f;
	int a,b,c;
	f=fopen("sumofint.in","r");
	fscanf(f,"%d",&a);
	fscanf(f,"%d",&b);
	c=a+b;
	printf("%d",c);
	fclose(f);
	return 0;
}
