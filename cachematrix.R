## Put comments here that give an overall description of what your
## functions do

# makeCacheMatrix and cacheSolve work together (with cacheSolve calling makeCacheMatrix) to solve and "cache" the inverse of an invertable square matrix

## Write a short comment describing this function
## 2015-06-21 Philip Woite

# This function {makeCacheMatrix} will calculate the inverse of the input matrix, and then cache it in memory

makeCacheMatrix <- function(x = matrix()) {

	if(!exists("myne", inherit = TRUE))  {
		message("myne did not yet exist")
		myne <<- NULL
		}
  
	workingMatrix <- x  

	goget <- function() workingMatrix
	setinverse <- function() myne <<- solve(workingMatrix)
	getinverse <- function() myne

	list(goget = goget, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function

# My solution for cacheSolve starts by calling makeCacheMatrix, passing the matrix "x" to makeCacheMatrix
cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  
	makeCacheMatrix(x)	

	if(!is.null(myne)) {
		message("getting the cached inverse")
		myne <- makeCacheMatrix(x)$getinverse()
		}
    		else {
		data <- x["goget()"]
  		message("I have to calculate the inverse")
		myne <- (makeCacheMatrix(x)$setinverse())
		}
return(myne)
}
