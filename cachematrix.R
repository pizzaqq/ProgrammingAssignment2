## It is often costly to calculate the inverse of matrices so we want to
## cache the inverse of a matrix rather than compute it repeatedly.Below 
## are two functions that will 
## 1) create a special "matrix" object that can cache its inverse
## 2) computes the inverse or retrieve the inverse from cache



# The makeCacheMatrix below is a list of four functions
# 1) set function sets the value for matrix
# 2) get function gets the value for matrix
# 3) setinverse function sets the inverse value for matrix
# 4) getinverse function gets the inverse value for matrix

makeCacheMatrix<-function(x=matrix()){
  set<-function(y){
    x<<-y
    inver<<-NULL
    
  }
  get<-function()x
  setinverse<-function(inverse) inver<<-inverse
  getinverse<-function()inver
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


# The second function below returns the inverse of matrix.
# If the inverse has been computes already, it gets the result.
# If not, it computes the inverse and sets the vlaue in cache by the function setinverse

cacheSolve <- function(x, ...) {
  inver <- x$getinverse()
  if(!is.null(inver)) {
    message("getting cached data.")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data)
  x$setinverse(inver)
  inver
<<<<<<< Updated upstream
}
=======
}
>>>>>>> Stashed changes
