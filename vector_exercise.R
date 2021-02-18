VECTOR
Ex. 3,6,7,8,9,10,12,13,14,16,20,23

https://www.w3resource.com/r-programmingexercises/vector/index.php

#3
vector = c()
values = c(0,1,2,3,4,5)
for (i in 1:length(values))
  vector[i] <- values[i]

#6
x = c(1, 2, 3, 4, 5)

print(sum(x))
print(mean(x))  
print(prod(x))

#7
x = c(1, NA, 3, 4, 5)

print(sum(x, na.rm=TRUE))
print(mean(x, na.rm=TRUE))  
print(prod(x, na.rm=TRUE))

#8
x = c(1, 2, 3, 4, 5)

print(min(x))  
print(max(x))

#9

x = c(1, 2, 3, 4, 5)
print(sort(x))
print(sort(x), decreasing = True)

#10
print("test if 3 is in x")
print(is.element(3, x))

#12

tail(x, n=1)

#13

l = length(x)
print(sort(x, partial = l-1)[l-1])

#14

x = c(1, 2, 3, 4, 5)
n = 1
print(sort(x, TRUE)[n])

#16

dfc1 = c(1, 2, 3, 4, 5)
dfc2 = c(6, 7, 8, 9, 10)
dfc3 = c(11, 12, 13, 14, 15)
dfc4 = c(16, 17, 18, 19, 20)
v <- data.frame(dfc1=1:5, dfc2=6:10, dfc3=11:15, dfc4=16:20)


#20

x = c(1, 2, 3, 4, 5)
rv = rev(x)

print(rv)


#23

df = data.frame(letters = c("a","b","c","d"), 
                numbers = c("1", "2", "3", "4"))

print(df)
comb = setNames(as.character(df$letters), df$numbers)
print(comb)





