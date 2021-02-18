1,8,10,11,12,14


#1
list_data = list("a", "b", c(5, 7, 9, 11))

print(list_data)

#8

l1 = list(1,2,3)
l2 = list("a", "b", "c")

mlist =  c(l1, l2)

print(mlist)


#10

df1 = data.frame(col1 = c(0, 1, 2), col2 = c(3, 4, 5))
df2 = data.frame(col1 = c(a, b, c), col2 = c(d, e, f))

new_list = list(df1, df2)

print(new_list)
print(new_list[[1]])
print(new_list[[2]])


#11.convert a given dataframe to a list by rows.

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

new_list = split(exam_data, seq(nrow(exam_data)))

print(new_list)


#12

l = list(1, 2, 3, 4, 5)
print(tail(l, n=1))


#14

l = list(1, 2, 3, 4, 5)
l[2] = list(NULL) 
l[3] = list(NULL) 