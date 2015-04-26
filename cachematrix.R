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
    ##A setter function, use this to set a matrix to object created by makeCacheMatrix function
    setinv <- function(solve) i <<- solve
    getinv <- function() i
    list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          i<- x$getinv()
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
      ## return the already calculated inversion
    }
    data <- x$get()
    i<- solve(data, ...)
    x$setinv(i)
    i
    ## i  return the solved result

}
