## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# The first function, makeVector creates a special "matrix", 
# which is really a matrix containing a function to
# 1.	set the value of the matrix
# 2.	get the value of the matrix
# 3.	set the value of the inverse of square 
# 4.	get the value of the inverse of square
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsqrt <- function(sqrt) m <<- sqrt
  getsqrt <- function() m
  list(set = set, get = get,
       setsqrt = setsqrt,
       getsqrt = getsqrt)
  
}

## Write a short comment describing this function

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsqrt()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- sqrt(data)
  x$setsqrt(m)
  m
}
