## this one is really close to the "mean" exapmle in the instructions but it works


## this function makes a list which contains 4 elements which are functions those set or get the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        invM<-NULL
        set<- function(y) {
                x<<-y
                invM<<- NULL ## Creating inverse matrix element
        } ## now we're making a list contins setting and getting function of invM
        get<- function() {x}
        setinverse<-function(inverse) {invM<<-inverse}
        getinverse<- function() {invM}
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function gets the getinverse inside of the list if it is not NULL
## If it is NULL "solve" function calculates the inverse of the matrix

cacheSolve <- function(x, ...) {
        
        
        invM <- x$getinverse()
        if(!is.null(invM)) {
                message("getting cached data")
                return(invM)
        }
        matris <- x$get()
        invM <- solve(matris, ...) ##calculates inverse of the matrix
        x$setinverse(invM)         ##setting the value as setinverse in the list
        invM                       ## returns the invM as the result.
        ## This function returns a matrix that is the inverse of 'x'
}
