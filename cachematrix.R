
#Below function calculates and set the 
#inverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
             i <- NULL
             
             #function to set
             #the value of x
             set <- function(y) {
              x <<- y
              i <<- NULL
              }
              
              get <- function() x #function to get the value of x
              setinverse <- function(inverse) i <<- inverse #function to set the inverse value of matrix
              getinverse <- function() i #function to get the inverse value of matrix
              list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  #returns a list of getters & setters
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()  #get the inverse of matrix value
        
        if (!is.null(m)) {  #get the cached value of matrix if m is null
         message("getting cached inverse matrix")
         return(m) #return m
        }
        
        data <- x$get()
        m <- solve(data) #calculate inverse of matrix data and assign to m
        x$setinverse(m) #assign the value of inverse matrix by calling setinverse function
        m
}
