even_num = [ ]
odd_num = [ ]
for num in range(0,100):
    if num%2 == 0:
        even_num.append(num)
    else:
        odd_num.append(num)
print(even_num)
print(odd_num)