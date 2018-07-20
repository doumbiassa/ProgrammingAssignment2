## In this exercise, we create a function that is used to create 
##a special object that stores a matrix and caches its inverse.

## This function will create special matrix. This function can
##cache the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
  set<-function(y){
    x<-y
  m<<-NULL

}
get<-function()x
setinverse<-function(inverse) m<<-inverse
getinverse<-function() m

## The following function calculates the inverse of the
## special matrix created by the makeCacheMatrix  function

cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(! is.null(m)) {
    
    message("getting the cached data")
    return(m)

        ## Return a matrix that is the inverse of 'x'
}
 data<-x$get()
  m<-inverse(data, ...)
  x$setinverse(m)
  m

}
