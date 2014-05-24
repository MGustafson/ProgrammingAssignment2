## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function contains a list of functions to get/set the value of the matrix and the inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(x) {
           x <<- y
           m <<- NULL
  }
  get <-function() x
  setinverse <- function (inverse) m <<- inverse
  getinverse <- function () m
  list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## This function retrives the Inverse of a matrix, if this has been cached and calculates the inverse and stores it in the cache
cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
              message("getting cached data")
              return(m)
      }
      data <-x$get()
      m <-solve(data)
      x$setinverse(m)
      m
}
