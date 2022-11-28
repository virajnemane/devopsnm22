import sys

n = len(sys.argv)
Sum = 0

for i in range(1, n):
	Sum += int(sys.argv[i])
	
print("\n\nResult:", Sum)