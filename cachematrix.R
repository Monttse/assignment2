## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## La siguiente es una adaptacion del ejemplo propuesto que calcula la 
## media de un vector. Se adapta para el caso de encontrar la inversa de una
## matriz; para ello, se determina el determina y se obtien la matrix, y se
## determina y obtiene el valor de la inversa de la matriz (lo que nos interesa)


makeCacheMatrix <- function(x = matrix()) {
        inversa <- NULL
        set <- function(y) {
                x <<- y
                inversa <<- NULL
        }
        get <- function() x
        set_Inversa <- function(Inversa) inversa <<- Inversa
        get_Inversa <- function() m
        list(set = set, get = get,
             set_Inversa = set_Inversa,
             get_Inversa = get_Inversa)
}


## Write a short comment describing this function

## Con esta funcion primero vemos si la inversa ya ha sido calculada de modo
## que si es cierto, recupera esa inversa y no la recalcula, si no, hace el
## calculo y lo determina a traves de la funcion set_Inversa

cacheSolve <- function(x, ...) {
        m <- x$get_Inversa()
        if(!is.null(inversa)) {
                message("getting cached data")
                return(inversa)
        }
        data <- x$get()
        inversa <- mean(data, ...)
        x$set_Inversa(inversa)
        inversa
}
