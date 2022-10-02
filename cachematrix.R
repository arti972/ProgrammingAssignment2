## Put comments here that give an overall description of what your. create an special matrix object that can cache it inverse.
## functions do

## Write a short comment describing this function. create a matrix

makeCacheMatrix <- function(A = matrix()) {
        m <- NULL
        set <- function(y) {
                A <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(A-1 = adj(A) / |A|; |A| ≠ 0) m <<- (A-1 = adj(A) / |A|; |A| ≠ 0)
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function.computes the inverse of the special "matrix". If the inverse has already been calculated , 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ## Return a matrix that is the inverse of 'x'
}
