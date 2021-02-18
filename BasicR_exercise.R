3,4,5,7,9,10,13,15,22,25,26

#3
print("Sequence from 20 to 50:")
print(seq(20,50))

print("Mean: 20 to 60:")
print(mean(20:60))

print("Sum:51 to 91:")
print(sum(51:91))

#4

v = sample(-50:50, 10, replace=TRUE)

print(v)

#5
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]

print(Fibonacci)


#7

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}

#9

print_factors = function(n) {
  print(paste("The factors of",n,"are:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}



#10

v = c(10, 20, 30, 40, 50, 60)
print(v)   

print(paste("Maximum value:",max(v)))
print(paste("Minimum value:",min(v)))

#13

n = floor(rnorm(1000, 50, 100))
print('List of random numbers in normal distribution:')
print(n)
t = table(n)
print("Count occurrences of each value:")
print(t)


#15

a = c(1, 2, 3, 4, 5)
b = c("a", "b", "c")
c = c(TRUE, FALSE, TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))

#22

n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)


#25

Employees = data.frame(Name=c("Eva","Dani","Gege"),
                       Gender=c("F","M","F"),
                       Age=c(10,13,,25),
                       Designation=c("Clerk","Manager","Executive"),
                       SSN=c("123-34-2346","123-44-779","556-24-433")
)
                  
print(Employees)



#26

Employees = data.frame(Name=c("Eva","Dani","Gege"),
                       Gender=c("F","M","F"),
                       Age=c(10,13,,25),
                       Designation=c("Clerk","Manager","Executive"),
                       SSN=c("123-34-2346","123-44-779","556-24-433")
)
              
print(summary(Employees))