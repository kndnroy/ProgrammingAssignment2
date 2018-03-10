# The following two functions are used to cache the inverse of a matrix.
    
# makeCacheMatrix creates a list containing a function to
    # 1. get the value of the matrix
    # 2. set the value of inverse of the matrix
    # 3. get the value of inverse of the matrix
    makeCacheMatrix <- function(x = matrix()) {
        inv <- matrix()
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list( get=get, setinverse=setinverse, getinverse=getinverse)
    }
    
 # The following function returns the inverse of the matrix. It first checks if
 # the inverse has already been computed. If so,it gets the result , if not
 #  it computes the inverse, sets the value in the cache and finally return inverse
        cacheSolve <- function(x) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
            message("getting cached data.")
            return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
    
