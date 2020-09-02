## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {#
  i <- NULL# at the begining there is not value, but there will be in the future
  set <- function(y) {
    x <<- y #defines tha function the vector x to a new vector y
    i <<- NULL # in this case reset the mean of the m to null,
  }
  get <- function() x # Returns the value of the vector x
  setinverse <- function(inverse) i <<- inverse #return the inverse the function
  getinverse <- function() i# return the value of the i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)# list of the values on the enviroment 
} #


cachemean <- function(x, ...) {#fUNCTION
  m <- x$getmean()#Defines the value of the m to the envoiroment to x
  if(!is.null(m)) {# contitional that indicated that the value is null or not
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


