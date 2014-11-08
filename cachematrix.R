## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    my_matrix <- NULL;
    set<- function(y) {
        x <<- y
        my_matrix <- NULL
    }
    get <- function() x
    setInverse <- function(inverse) my_matrix <<- inverse
    getInverse <- function() my_matrix
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    my_matrix <- x$getInverse()
    if ( !is.null(my_matrix) ) {
        message("getting cache data")
        return(my_matrix)
    }
    data <- x$get()
    my_matrix <- solve(data)
    x$setInverse(my_matrix)
    my_matix
}
