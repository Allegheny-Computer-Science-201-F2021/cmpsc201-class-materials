def m1():
	alpha = "cs201"
	def m2():
		print(alpha)
	return m2
m1()
beta = m1() # beta is nothing but m2 beta = m2
print(beta.__name__)
beta()
