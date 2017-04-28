## Sebastian Garetto - April 28, 2017
## Following functions create an object that stores a matrix and cache its inverse.

## Function makeCecheMatrix() create a matrix object that cache its inverse.  

makeCacheMatrix <- function(x = matrix()) {
  
          inv_data <- NULL
          set <- function(y) {
                    x <<- y
                    inv_data <<- NULL
          }
          get <- function() x
          set_inv <- function(inv) inv_data <<- inv
          get_inv <- function() inv_data
          
          list(set = set, get = get, set_inv = set_inv, get_inv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
