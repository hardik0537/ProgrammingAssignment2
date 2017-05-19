cacheSolve <- function(){
  matr <- x$getMatrix()
  if(!is.null(matr)){
    message("getting cached matrix")
    return(matr)
  }
  data <- x$get()
  matr <- solve(data, ...)
  x$setMatrix(matr)
  matr
}