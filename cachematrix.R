## To write a pair of functions that cache the inverse of a matrix.

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
              m <- NULL
              set <-function(y)
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setSolve <- function(Solve) m <<- Solve
        getSolve <- function() m
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}

}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getSolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- Solve(data, ...)
        x$setSolve(m)
        m
}
