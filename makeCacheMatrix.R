makeCacheMatrix <- function(x = matrix()) {
  matr <- NULL
  set <- function(y) {
    x <<- y
    matr <<- NULL
  }
  get <- function() x
  setMatrix <- function(matrix) matr <<- matrix
  getMatrix <- function() matr
  list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)
  
}