## Put comments here that give an overall description of what your
## create a special object that stores a matrix and caches its inverse

## create a special object that stores a matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## computes the inverse of the special “matrix” 

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
        
  ## Return a matrix that is the inverse of 'x'
}
