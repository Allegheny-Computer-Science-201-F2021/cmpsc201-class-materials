# fibonacci series 1,1,2,3,5,8,13....
# using iterators.
def fib(n):
	a = b = 1
	result = []
	for i in range(n):
		result.append(a)
		c = b
		b = a + b
		a = c		
	return result

res = fib(100000)
for i in range(3):
	print(res[i])
