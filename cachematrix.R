## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function is used to cache inversion matrix so that it ca be used in future.
## it a matrix as input
 
makeCacheMatrix <- function(x = matrix()) {
  
    print("caching the matrix")
    ## << is used to assign the variables in environment
    orginalMat <<- x
    invMatrix <<- solve(x)
  

}

## Write a short comment describing this function
## function is used to get inverse of given matrix . fOllowing takes a vector 
# as input x and also number of columns and rows needed for matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  # check with object exists in environment
  if(exists("orginalMat") == FALSE){
    orginalMat <<- NULL
  }
  mat <- matrix(x,...)
  invMatrix <- if (identical(mat,orginalMat)){
    
    invMatrix
    
  }else{
    makeCacheMatrix(mat)  
  }
  
  invMatrix
}
