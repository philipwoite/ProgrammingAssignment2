## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 2015-06-21 Philip Woite
## This function {makeCacheMatrix} will calculate the inverse of the input matrix, and then cache it in memory

makeCacheMatrix <- function(x = matrix()) {
## 14:45
inverseMatrix <- solve(x)
return(inverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
