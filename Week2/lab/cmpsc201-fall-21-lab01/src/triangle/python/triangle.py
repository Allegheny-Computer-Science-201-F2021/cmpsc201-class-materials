print("Enter the number of rows:")
rows = int(input())
for i in range(0,rows+1):
	for j in range(0,i+1):
		print("*\t", end = '');
	print()
			