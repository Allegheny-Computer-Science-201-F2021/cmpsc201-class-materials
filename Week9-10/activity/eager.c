#include <stdio.h>
int slow(int n){
	int count = 0;
	for (int i = n-1; i >= 0; i--){
		count += 1;		
	}
	return count;
}
int f(int a, int b){
	return a+1;
}
int main(){
	int x = f(10, slow(1000000));
	printf("%d\n", x);
}