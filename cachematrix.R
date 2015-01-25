## Put comments here that give an overall description of what your
## functions do
## This function caches the inverse instead of calculating
## it over and over again

## Write a short comment describing this function
## sets then gets matrix value
## sets then gets the inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Write a short comment describing this function
## Checks to see if inverse has been calculated.  If True then 
## returns initial matrix if false calculates inverse.
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
