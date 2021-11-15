size = 10
with open('data.txt', 'w') as f:
	for item in range(size):
		f.write(str(item) + '\n')