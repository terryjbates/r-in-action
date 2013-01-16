# Using matrix subscripts
x <- matrix(1:10, nrow=2)
x
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10

# Get the second row
> x[2,]
[1]  2  4  6  8 10

# Get the first row
> x[1,]
[1] 1 3 5 7 9

# Get element at 1st row, 4th column
> x[1,4]
[1] 7

# Get elements in first row, 4th and 5th colum
> x[1, c(4,5)]
[1] 7 9
