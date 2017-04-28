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


## Function cacheSolve() calculates inverse matrix created by makeCacheMatrix()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Obtain cache value
          inv_data <- x$get_inv() 
        ## If cache value present then reurn it  
          if(!is.null(inv_data)) {
                    message("getting cached data")
                    return(inv_data)
          }
          data <- x$get()
          inv_data <- solve(data, ...)
          x$set_inv(inv_data)
          inv_data
}
