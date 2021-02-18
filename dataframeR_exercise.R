
#1.create empty dataframe

df = data.frame(Ints=integer(),
                Doubles=double(),
                Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)

print(str(df))


#2,data frame from four given vectors.

x1 = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
x2 = c("a","b" , "c", "d", "e", "f", "g","h" , "i", "j")
x3 = c(1, 3, 0, 3, 0, 3, 0, 1, 0, 1)
x4 = c(1, 5, 6, 3, 2, 3, 1, 1, 8, 1)
  
df = data.frame(x1, x2, x3, x4)  
print(df)

#3

print(df)
print(str(df))

#4
print(summary(df))

#5

result <- data.frame(df$x1,df$x4)
print(result)


#6
result =  df[1:2,]
print(result)


#7
result =  df[c(3,4),c(1,2)]
print(result)

#8

df$x5 = c("r","f","c","w","r","g","h","s","r","j")
print(df)


#9
new_df = data.frame(
  x1 = c('x', 't'),
  x2 = c(4, 9),
  x3 = c(1, 3),
  x4 = c('h', 'f')
)
df =  rbind(df, new_df)

print(df)

#10
df = subset(df, select = -c(x1, x2))
print(df)


#11
df <- df[-c(2, 4, 6), ]
print(df)


#12

df = data.frame(
  x1 = c('x', 't'),
  x2 = c(4, 9),
  x3 = c(1, 3),
  x4 = c('h', 'f')
)

df = df[with(df, order(x1, x2)), ]
print(df)

#13

df1 = data.frame(numid = c(12, 14, 10, 11))
df2 = data.frame(numid = c(13, 15, 11, 12))

print("Left outer Join:")
result1 = merge(df1, df2, by = "numid", all.x = TRUE)

print("Right outer Join:")
resul2t = merge(df1, df2, by = "numid", all.y = TRUE)

print("Outer Join:")
result3 = merge(df1, df2, by = "numid", all = TRUE)

print("Cross Join:")
result4 = merge(df1, df2, by = NULL)


#14

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
exam_data[is.na(exam_data)] = 3
print("After removing NA with 3, the said dataframe becomes:")
print(exam_data)

#15
df1 = data.frame(numid = c(12, 14, 10, 11))
df2 = data.frame(numid = c(13, 15, 11, 12))
print("Left outer Join:")
result = merge(df1, df2, by = "numid", all.x = TRUE)
print(result)
print("Right outer Join:")
result = merge(df1, df2, by = "numid", all.y = TRUE)
print(result)
print("Outer Join:")
result = merge(df1, df2, by = "numid", all = TRUE)
print(result)
print("Cross Join:")
result = merge(df1, df2, by = NULL)
print(result)

#16

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("Change more than one column name  of the said dataframe:")
colnames(exam_data)[which(names(exam_data) == "name")] = "student_name"
colnames(exam_data)[which(names(exam_data) == "score")] = "avg_score"
print(exam_data)

#17

print(df[sample(nrow(df), 3),])

#18

df = df[c("x1", "x2", "x3", "x4")]

#19
df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)
df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)

print("Row(s) in first data frame that are not present in second data frame:")
print(setdiff(df_90,df_91))

#20

a = c("a", "b", "c", "d", "e")
b = c("d", "e", "f", "g")

print("Elements which are present in both dataframe:")
result = intersect(a, b)
print(result)


#21

print("Find elements come only once that are common to both given dataframes:")
result = union(a, b)
print(result)

#22

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
save(exam_data,file="data.rda")
load("data.rda")
file.info("data.rda") 

#23
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("The number of NA values in attempts column:")
print(sum(is.na(exam_data$attempts)))


#24

a = c(10,20,10,10,40,50,20,30)
b = c(10,30,10,20,0,50,30,30)
print("Original data frame:")
ab = data.frame(a,b)
print(ab)
print("Duplicate elements of the said data frame:")
print(duplicated(ab))
print("Unique rows of the said data frame:")
print(unique(ab))

#25

a = c(10,20,10,10,40,50,20,30)
b = c(10,30,10,20,0,50,30,30)
print("Original data frame:")
ab = data.frame(a,b)
print(ab)
print("Duplicate elements of the said data frame:")
print(duplicated(ab))
print("Unique rows of the said data frame:")
print(unique(ab))


#26
  
data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(data)
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("data.frame after removing 'Solar.R'  and 'Wind' variables:")
print(data)