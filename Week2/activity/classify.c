#include <stdio.h>
int main(){
	int ls[] = {'a','b','c'};
	int length = (int)( sizeof(ls) / sizeof(ls[0]));
	if (length % 2 == 0)
		printf("even number of elements in the list\n");
	else
		printf("odd number of elements in the list\n");
	return 0;
}