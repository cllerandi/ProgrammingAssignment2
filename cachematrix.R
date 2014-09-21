## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Creates an object which saves a matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inversa<-NULL
  set<-function(y){
    x<<-y
    inversa<<-NULL
  }
  get<-function(){
    x
  }
  setMatrixinversa<-function(Matrixinversa) {
    inversa<<-Matrixinversa
  }
  getMatrixinversa<-function(){  inversa  }
  list(set=set, get=get, setMatrixinversa=setMatrixinversa, getMatrixinversa=getMatrixinversa)
}


## Write a short comment describing this function

## calculate a inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversa<-x$getMatrixinversa()
  if(!is.null(inversa)){
    message("getting cache data")
    return(inversa)
  }
  data<-x$get()
  inversa<-solve(data,...)
  x$setMatrixinversa(inversa)
  inversa

}
