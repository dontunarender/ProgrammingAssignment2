## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
             i <- NULL
             
             set <- function(y) {
              x <<- y
              i <<- NULL
              }
              
              get <- function() x 
              setinverse <- function(inverse) i <<- inverse #function to set the inverse value of matrix
              getinverse <- function() i #function to get the inverse value of matrix
              list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        
        if (!is.null(m)) {
         message("getting cached inverse matrix")
         return(m)
        }
        
        data <- x$get()
        m <- solve(data) #calculate inverse of matrix data and assign to m
        x$setinverse(m) #assign the value of inverse matrix by calling setinverse function
        m
}
