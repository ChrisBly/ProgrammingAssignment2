## Assignment: Caching the Inverse of a Matrix
## Matrix inversion is usually a costly computation and 
## there may be some benefit to caching the inverse of 
## a matrix rather than computing it repeatedly

##This function creates a special "matrix" object that can cache its inverse.
## For this assignment, assume that the matrix supplied is always invertible.

makeCacheMatrix <- function(x = matrix()) {
## Note:   X is a square invertible matrix
## This creates a function and set the value of the vector
 ## list below:
 ## Step 1:  setup the value of the vector
 
 ## Step 2:  get the value of the vector

 ## Step 3: setup the value of the mean
  
 ## Step 4:   get the value of the mean
    
 ## These steps creates input for cashSolve()
 
      m <-NULL
      
      ## The inverse is set to Null.
      
      set <- function(y) 
              {
        
      x <<- y
      m <<- NULL
      
      } 
      
      ##<<- operator which can be used to assign a value to
      ## an object in an environment that is different 
      ## from the current environment.
      
      get = function()x 
      
      setupinverse <- function(solve) m <<- solve
      gogetinverse <- function() m  
      list(set = set,get = get,setupinverse = setupinverse,gogetinverse = gogetinverse)
      
}


## This function computes the inverse of the special "matrix" returned
## by makeCacheMatrix above

cacheSolve  <- function(x, ...) {
            
            ## Return a matrix that is the inverse of X
            
            m <- x$gogetinverse()
            
            ##Go check the cache in function: makeCacheMatrix
            if(!is.null(m))
            {
              
            message("getting cached date from function: makeCacheMatrix")
            return (m)
            
            }
  
            ## if no data in cache. Then calucate the inverse
            data = x$get()
            m < - solve(data,...)
            x$setupinverse(m)
            
            ## Inverse is returned.
            

}
