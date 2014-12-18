# Inverting matrices can be an risky computation to make.
# To reduce memory and time intensive processes,
# the following functions cache the inverse of a matrix
# instead of computing it each time. This saves both time
# and memory.

# The makeCacheMatrix function creates a special "matrix",
#which is really a list that contains a function to:
# 1. Set the value of the matrix
# 2. Get the value of the matrix
# 3. Set the inverse value of the matrix
# 4. Get the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, 
         get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}


# The cacheSolve function will calculate the inverse of the 
# special "matrix" created with the makeCacheMatrix function. 
# It will first check to see if the inverse matrix has already 
# been calculated. If the matrix has already been calculated, 
# cacheSolve will return the inverse from the cache. Otherwise 
# it will calculate the inverse and set it in the cache via the
# setinverse function.

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("Getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
