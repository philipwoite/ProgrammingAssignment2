<<-## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 2015-06-21 Philip Woite
## This function {makeCacheMatrix} will calculate the inverse of the input matrix, and then cache it in memory

makeCacheMatrix <- function(x = matrix()) {
## 14:45
	workingMatrix <- x  
	m <<- NULL

	get <- function() workingMatrix
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	#set <- function

	#list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

	setinverse

	list(get = get, setinverse = setinverse, getinverse = getinverse)



	#return(inverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
	if(!is.null(m)) {
		message("getting the cached inverse")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m

#inverseMatrix <- solve(workingMatrix)

}
