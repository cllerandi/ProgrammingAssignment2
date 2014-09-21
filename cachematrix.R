## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
  list(set=set, get=get, setMatrixinversa=setMatrixinversa, getMatrixinversa=setMatrixinversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversa<-matrix$matrix$getinversa()
  if(!is.null(inversa)){
    message("getting cache data")
    return(inversa)
  }
  
  data<-matrix$get
  inversa<-Solve(data,...)
  matrix$set(Matrixinversa)
  inversa

}
