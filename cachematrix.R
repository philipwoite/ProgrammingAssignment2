## Put comments here that give an overall description of what your
## functions do

# makeCacheMatrix and cacheSolve work together (with cacheSolve calling makeCacheMatrix) to solve and "cache" the inverse of an invertable square matrix
# I have named the inverse matrix "myne" which translated from Afrikaans to English simply means "mine", saying the inverse belongs to me. 


## Write a short comment describing this function
## 2015-06-21 Philip Woite

# The function "makeCacheMatrix" will calculate the inverse of the input matrix, and then cache it in memory in the list that is returned.

makeCacheMatrix <- function(x = matrix()) {

	if(!exists("myne", inherit = TRUE))  {
		message("The inverse matrix did not yet exist, so I will initialise it with a NULL value.")
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
		message("I'm getting the cached inverse")
		myne <- makeCacheMatrix(x)$getinverse()
		}
    		else {
		data <- x["goget()"]
  		message("I have to first calculate the inverse")
		myne <- (makeCacheMatrix(x)$setinverse())
		}
return(myne)
}
