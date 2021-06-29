## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         i <- NULL
         set <- function(s) {
                 x <<- s
                 i <<- NULL
                 }
         get <- function() x
         setinverse <- function(inverse) i <<- inverse
         getinverse <- function() i
         list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
 }


 ## This functiomn will create the overall outcome of the solution and will provide a cached inverse of a matrix

 cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
         i <- x$getinverse()
         if(!is.null(i)) {
                 message("getting cached data")
                 return(i)
                 }
         data <- x$get()
         i <- inverse(data, ...)
         x$setinverse(i)
         i
}
