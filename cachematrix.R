## Assignment 2 (Week 3)
## Caches inverse of matrix.

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


## Below function checks if inverse of matrix is already cached else it will calculate the inverse and return it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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
