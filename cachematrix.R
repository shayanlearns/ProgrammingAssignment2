## Compute and cache the inverse of a matrix
## functions do

## set and get the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
minverse <- NULL
  set <- function(y){
  x <<- y
  minverse <<- NULL
}
get = function() x
setm <- function(inverse) inv <<- inverse
getm <- function() minverse
list(set=set, get=get, setm=setm, getm=getm)
}


## caching the inverse if it has been calculated, 

cacheSolve <- function(x, ...) {
       minverse <- x$getm()
    if(!is.null(minverse)){
      message("retrieving from cache")
      return(minverse)
    }
    matrix <- x$get()
    minverse <- solve(matrix, ...)
    x$setm(minverse)
    minverse
}
