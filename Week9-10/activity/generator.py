# fibonacci series 1,1,2,3,5,8,13....
# using generators.
def fib(n):
	a = b = 1
	for i in range(n):
		yield a
		c = b
		b = a + b
		a = c		
g = fib(100000)
index = 0;
while(index < 3):
	print(g.__next__())
	index += 1
