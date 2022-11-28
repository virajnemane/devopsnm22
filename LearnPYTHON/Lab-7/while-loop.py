while 2>1:
    i=input("Enter any alphabet \n")
    if i=='c':
        continue
    elif i=='q':
        break
    else:
        print("While loop exited without break.")   #Never going to execute
    print("you have typed",i)