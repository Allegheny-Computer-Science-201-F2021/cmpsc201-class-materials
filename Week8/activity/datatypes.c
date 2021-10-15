#include <stdio.h>
int main(){
	short alpha = 0;
	unsigned short beta = 0;
	int gamma = 0;
	unsigned int delta = 0;
	printf("%lu\t%hi\n", sizeof(alpha), alpha);
	printf("%lu\t%hu\n", sizeof(beta), beta);
	printf("%lu\t%d\n", sizeof(gamma), gamma);
	printf("%lu\t%i\n", sizeof(delta), delta);
	
	
}