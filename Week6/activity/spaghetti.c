#include <stdio.h>
// counter using goto statements and a spagheti code
int main(){
	int count, number;
	printf("Enter the maximum number: ");
	scanf("%d", &number);
	count = 1;
	goto ifs;
	begin:
		printf("%d\n", count);
		count = count * 2;
	ifs:
		if (count <= number)
			goto begin;
	return 0;
}