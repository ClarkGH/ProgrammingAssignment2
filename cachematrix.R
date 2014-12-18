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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
