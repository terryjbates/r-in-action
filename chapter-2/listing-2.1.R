# Creating matrices
# create 5X4 matrix, based on range of numbers from
# 1 through 20. Populate by column, left to right
y <- matrix(1:20, nrow=5, ncol=4)

#    [,1] [,2] [,3] [,4]
# [1,]    1    6   11   16
# [2,]    2    7   12   17
# [3,]    3    8   13   18
# [4,]    4    9   14   19
# [5,]    5   10   15   20

cells <-c(1, 26, 24, 68)

mymatrix <-matrix(cells, nrow=2, ncol=2, byrow=TRUE,
    dimnames=list(rnames,cnames))

#    C1 C2
# R1  1 26
# R2 24 68

mymatrix <-matrix(cells, nrow=2, ncol=2, byrow=FALSE, 
    dimnames=list(rnames,cnames))

   C1 C2
R1  1 24
R2 26 68