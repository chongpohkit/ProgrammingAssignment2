## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function takes input of a matrix x, default is a 1x1 matrix
## m is a variable that stores computer inverse matrix of x
## x is the original matrix passed as a parameter
## the function returns a list object with 4 functions and 2 variables
## set() changes the original stored matrix x
## get() returns the original stored matrix x
## setinv() sets the inverse of x into m
## getinv() returns the value of m

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinv <- function(inv) m <<- inv
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function
## Function attempts to retrieve calculated inverse of the 
## matrix stored in list object x and if it exists, return it.
## Otherwise, function will calculate the inverse of 
## the matrix stored in list object x, and return it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  cached_inv_x <- x$getinv()
	  if(!is.null(cached_inv_x)) {
		  message("getting cached data")
		  return(cached_inv_x)
	  }
    cached_x <- x$get()
    return(solve(cached_x))
}
