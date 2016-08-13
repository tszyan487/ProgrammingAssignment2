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
  m <- data
  x$setsqrt(m)
  m
}


# b <- matrix(c(1,4,9,16,25,36),nrow = 2,ncol=3)

# > b
#       [,1] [,2] [,3]
# [1,]    1    9   25
# [2,]    4   16   36

# > a <- makeCacheMatrix(b)
# > cacheSolve(a)
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6


# > a$get()
#       [,1] [,2] [,3]
# [1,]    1    9   25
# [2,]    4   16   36



