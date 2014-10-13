## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function helps cache and retrieve the value of the inverse of a matrix.
makeCacheMatrix <- function(x = matrix()) {
    
    inverse<-NULL
    setMatrix<-function(y){
        x<<-y
        inverse<<-NULL
    }
    getMatrix<-function(){
        return(x)
    }
    
    setInverse<-function(inv){inverse<<-inv}
    getInverse<-function(){return(inverse)}
    #Returns these functions as output
    list(setMatrix=setMatrix,getMatrix=getMatrix,setInverse=setInverse,getInverse=getInverse)

}

## Write a short comment describing this function
# This function solves the inverse of a matrix, and returns the cached value if the matrix has not changed.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse<-x$getInverse()
    
    if(!is.null(inverse)){
        #returning cached inverse
        return(inverse)
    }
    matrix<-x$get()
    inverse<-solve(matrix)
    x$setInverse(inverse)
    inverse
}
