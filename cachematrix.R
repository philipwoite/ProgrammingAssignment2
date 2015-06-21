#<<-## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 2015-06-21 Philip Woite
## This function {makeCacheMatrix} will calculate the inverse of the input matrix, and then cache it in memory

#environment(MakeCacheMatrix) <- myNewEnvironment

makeCacheMatrix <- function(x = matrix()) {
## 14:45
#environment(makeCacheMatrix) <- donder"
	#myne <- x  
	
	set <- function(y) {
#	  x <<- y

  myne <<- NULL
}
  
	workingMatrix <- x  
#  set <- function() myne <<- NULL

	goget <- function() workingMatrix
	setinverse <- function() myne <<- solve(workingMatrix)
	getinverse <- function() myne
	#set <- function

	#list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

	setinverse

	list(#set = set, 
    goget = goget, setinverse = setinverse, getinverse = getinverse)



	#return(inverseMatrix)
#print(environmentName(makeCacheMatrix))
}

theEnv <- environmentName(makeCacheMatrix)
## Write a short comment describing this function

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'

  
 # assign(parent.env(makeCacheMatrix)
   makeCacheMatrix(x)	
 # print(myne <- makeCacheMatrix(x)$goget())
	if(!is.null(myne)) {
		message("getting the cached inverse")
		return(makeCacheMatrix(x)$getinverse())
	}
    else {
	data <- x["goget()"]
  message("I have to calculate the inverse")
	myne <- (makeCacheMatrix(x)$setinverse())
#	x["makeCacheMatrix$setinverse(myne)"]
      x["setinverse()"]	
      myne
    }
#inverseMatrix <- solve(workingMatrix)

}
