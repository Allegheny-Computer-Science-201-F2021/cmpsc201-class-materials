#include <stdio.h>
int main(){
	// -2^(16-1) =-2^15
	// +2^(16-1)-1 =-2^15 - 1
	// Capacity of alpha is defined by the range of
	// the nos between -32768 to 32767
	short alpha = -32768;  // 2*8 = 16 bits // signed (- and +)
	// bits = 2*8 = 16
	// Capacity of beta is defined by the range of
	// numbers between 0 to 65535 
	// 2^(16)-1

	unsigned short beta = 65536; // positive (+)
	int gamma = 0;
	unsigned int delta = 0;

	printf("%lu\t%hi\n", sizeof(alpha), alpha);
	printf("%lu\t%hu\n", sizeof(beta), beta);
	printf("%lu\t%d\n", sizeof(gamma), gamma);
	printf("%lu\t%i\n", sizeof(delta), delta);
	
	
}